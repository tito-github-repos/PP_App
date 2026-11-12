import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/admin/view/admin_user_list_screen.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/core/theme/app_colors.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  String _todayIndia() {
    final now = DateTime.now()
        .toUtc()
        .add(const Duration(hours: 5, minutes: 30));

    final year = now.year.toString().padLeft(4, '0');
    final month = now.month.toString().padLeft(2, '0');
    final day = now.day.toString().padLeft(2, '0');

    return '$year-$month-$day';
  }

  String _greeting() {
    final hour = DateTime.now()
        .toUtc()
        .add(const Duration(hours: 5, minutes: 30))
        .hour;

    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return const Scaffold(
        body: Center(
          child: Text('Please login again.'),
        ),
      );
    }

    final usersRef =
        FirebaseFirestore.instance.collection('users');

    final today = _todayIndia();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: StreamBuilder<
            DocumentSnapshot<Map<String, dynamic>>>(
          stream: usersRef.doc(currentUser.uid).snapshots(),
          builder: (context, adminSnapshot) {
            if (adminSnapshot.connectionState ==
                ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              );
            }

            if (adminSnapshot.hasError ||
                !adminSnapshot.hasData ||
                !adminSnapshot.data!.exists) {
              return const Center(
                child: Text('Unable to verify admin account.'),
              );
            }

            final adminData =
                adminSnapshot.data!.data() ?? {};

            if (adminData['role'] != 'admin') {
              return const Center(
                child: Text('Admin access required.'),
              );
            }

            final adminName =
                adminData['name']?.toString().trim();

            final displayName =
                (adminName != null && adminName.isNotEmpty)
                    ? adminName
                    : 'Admin';

            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                22, 24, 22, 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ========================================
                  // HEADER
                  // ========================================

                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius:
                              BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary
                                  .withOpacity(.20),
                              blurRadius: 14,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.menu_book_rounded,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),

                      const SizedBox(width: 12),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'For-Facts',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w800,
                                color: AppColors.ink,
                                letterSpacing: -.5,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Admin Panel',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.muted,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // LOGOUT BUTTON - NO PROFILE
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _confirmLogout,
                          borderRadius:
                              BorderRadius.circular(15),
                          child: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius:
                                  BorderRadius.circular(15),
                              border: Border.all(
                                color: AppColors.surfaceBorder,
                              ),
                            ),
                            child: const Icon(
                              Icons.logout_rounded,
                              size: 21,
                              color: AppColors.muted,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ========================================
                  // WELCOME CARD
                  // ========================================

                  _buildWelcomeCard(displayName),

                  const SizedBox(height: 30),

                  // ========================================
                  // SECTION TITLE
                  // ========================================

                  const Text(
                    'Admin Overview',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                      color: AppColors.ink,
                      letterSpacing: -.4,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    'Manage users and monitor their practice activity.',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.muted,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ========================================
                  // REGISTERED USERS
                  // ========================================

                  _adminMenu(
                    title: 'Registered Users',
                    subtitle:
                        'View all registered student accounts.',
                    icon: Icons.people_alt_rounded,
                    accent: AppColors.primary,
                    accentSoft: AppColors.primarySoft,
                    query: usersRef,
                    listType: 'registered',
                  ),

                  const SizedBox(height: 18),

                  // ========================================
                  // DAILY ACTIVE USERS
                  // ========================================

                  _adminMenu(
                    title: 'Daily Active Users',
                    subtitle:
                        'Students active for 7 consecutive days.',
                    icon: Icons.trending_up_rounded,
                    accent: AppColors.primary,
                    accentSoft: AppColors.primarySoft,
                    query: usersRef
                        .where(
                          'lastAttemptDate',
                          isEqualTo: today,
                        )
                        .where(
                          'activeDaysLast7DaysCount',
                          isEqualTo: 7,
                        ),
                    listType: 'daily',
                  ),

                  const SizedBox(height: 18),

                  // ========================================
                  // REWARD ELIGIBLE USERS
                  // ========================================

                  _adminMenu(
                    title: '7-Day Reward Eligible Users',
                    subtitle:
                        'Students who unlocked all 3 rewards.',
                    icon: Icons.workspace_premium_rounded,
                    accent: AppColors.secondary,
                    accentSoft: AppColors.secondarySoft,
                    query: usersRef.where(
                      'streak7RewardEligible',
                      isEqualTo: true,
                    ),
                    listType: 'streak',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // ================================================
  // WELCOME CARD
  // ================================================

  Widget _buildWelcomeCard(String adminName) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(.22),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -45,
            top: -60,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.07),
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(.16),
                    ),
                    child: const Icon(
                      Icons.admin_panel_settings_rounded,
                      color: Colors.white,
                      size: 23,
                    ),
                  ),
                  const SizedBox(width: 11),
                  Text(
                    _greeting().toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                'Welcome,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  height: 1.1,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                '$adminName!',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.5,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Manage your users and monitor their learning progress.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12.5,
                  height: 1.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ================================================
  // ADMIN MENU CARD
  // ================================================

  Widget _adminMenu({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color accent,
    required Color accentSoft,
    required Query<Map<String, dynamic>> query,
    required String listType,
  }) {
    return StreamBuilder<
        QuerySnapshot<Map<String, dynamic>>>(
      stream: query.snapshots(),
      builder: (context, snapshot) {
        final count = snapshot.hasData
            ? snapshot.data!.docs
                .where(
                  (doc) =>
                      doc.data()['role'] != 'admin',
                )
                .length
            : 0;

        return Material(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(22),
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: () {
              Get.to(
                () => AdminUsersListScreen(
                  title: title,
                  query: query,
                  listType: listType,
                ),
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: AppColors.surfaceBorder,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.025),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: accentSoft,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      icon,
                      color: accent,
                      size: 28,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: AppColors.ink,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12.5,
                            height: 1.4,
                            color: AppColors.muted,
                          ),
                        ),

                        const SizedBox(height: 12),

                        Row(
                          children: [
                            Text(
                              '$count users',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: accent,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 14,
                              color: accent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundTint,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 17,
                      color: AppColors.muted,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ================================================
  // LOGOUT CONFIRMATION
  // ================================================

  Future<void> _confirmLogout() async {
    final confirmed = await Get.dialog<bool>(
      Dialog(
        backgroundColor: AppColors.surface,
        insetPadding:
            const EdgeInsets.symmetric(horizontal: 28),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  color: AppColors.incorrect.withOpacity(.10),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.logout_rounded,
                  color: AppColors.incorrect,
                  size: 28,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Sign Out?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: AppColors.ink,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Are you sure you want to sign out of your admin account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: AppColors.muted,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.back(result: false);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.muted,
                        side: const BorderSide(
                          color: AppColors.surfaceBorder,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back(result: true);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.incorrect,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: const Text(
                        'Sign Out',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );

    if (confirmed != true) return;

    await Get.find<AuthController>().signOut();
  }
}
