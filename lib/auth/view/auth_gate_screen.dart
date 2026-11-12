import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pp_app/admin/view/admin_dasboard_screen.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/auth/view/login_screen.dart';
import 'package:pp_app/auth/view/register_screen.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/mainDasboard/view/main_dashboard.dart';

class AuthGateScreen extends StatelessWidget {
  const AuthGateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, authSnapshot) {
        if (authSnapshot.connectionState ==
            ConnectionState.waiting) {
          return _loadingScreen();
        }

        final user = authSnapshot.data;

        // Not logged in
        if (user == null) {
          return const LoginScreen();
        }

        // Check Firestore user document
        return FutureBuilder<
            DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance
              .collection('users')
              .doc(user.uid)
              .get(),
          builder: (context, userSnapshot) {
            if (userSnapshot.connectionState ==
                ConnectionState.waiting) {
              return _loadingScreen();
            }

            if (userSnapshot.hasError) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Unable to verify your account.',
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                        child: const Text('Back to Login'),
                      ),
                    ],
                  ),
                ),
              );
            }

            // New user - registration required
            if (!userSnapshot.hasData ||
                !userSnapshot.data!.exists) {
              final authController =
                  Get.find<AuthController>();

              authController.nameController.text =
                  user.displayName ?? '';

              return const RegisterScreen();
            }

            final data =
                userSnapshot.data!.data() ?? {};
debugPrint('========== AUTH GATE ==========');
debugPrint('Email: ${user.email}');
debugPrint('UID: ${user.uid}');
debugPrint('Document exists: ${userSnapshot.data!.exists}');
debugPrint('Role: ${data['role']}');
debugPrint('================================');
            final role = data['role']
                    ?.toString()
                    .toLowerCase() ??
                'student';

            // ADMIN
            if (role == 'admin') {
              return const AdminDashboardScreen();
            }

            // STUDENT
            return const DashboardScreen();
          },
        );
      },
    );
  }

  Widget _loadingScreen() {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
    );
  }
}