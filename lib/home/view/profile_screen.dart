
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/auth/view/auth_gate_screen.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/routes/app_routes.dart';
import 'package:pp_app/widgets/edit_dialog_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() =>
      _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<Map<String, dynamic>> profileFuture;

  @override
  void initState() {
    super.initState();
    profileFuture = _loadProfile();
  }

  Future<Map<String, dynamic>> _loadProfile() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      throw Exception('User not logged in');
    }

    final db = FirebaseFirestore.instance;

    // USER DETAILS
    final userSnapshot = await db
        .collection('users')
        .doc(user.uid)
        .get();

    final userData = userSnapshot.data() ?? {};

    // // SUBSCRIPTION ENTITLEMENT
    // Map<String, dynamic>? premium;
    // bool entitlementLoaded = true;

    // try {
    //   final entitlementSnapshot = await db
    //       .collection('studentEntitlements')
    //       .doc(user.uid)
    //       .get();

    //   final products =
    //       entitlementSnapshot.data()?['products'];

    //   if (products is Map &&
    //       products['pyqPremium'] is Map) {
    //     premium = Map<String, dynamic>.from(
    //       products['pyqPremium'] as Map,
    //     );
    //   }
    // } catch (e) {
    //   entitlementLoaded = false;
    //   debugPrint('Entitlement load failed: $e');
    // }

    // // FIRST SUCCESSFUL SUBSCRIPTION RECORD
    // DateTime? subscribedDate;
    // bool historyLoaded = true;

    // try {
    //   final historySnapshot = await db
    //       .collection('studentPaymentHistory')
    //       .where(
    //         'studentUid',
    //         isEqualTo: user.uid,
    //       )
    //       .get();

    //   for (final doc in historySnapshot.docs) {
    //     final value = doc.data()['verifiedAt'];

    //     if (value is Timestamp) {
    //       final date = value.toDate();

    //       if (subscribedDate == null ||
    //           date.isBefore(subscribedDate)) {
    //         subscribedDate = date;
    //       }
    //     }
    //   }
    // } catch (e) {
    //   historyLoaded = false;
    //   debugPrint('Payment history load failed: $e');
    // }

    final createdValue = userData['createdAt'];

    final registeredDate =
        createdValue is Timestamp
            ? createdValue.toDate()
            : user.metadata.creationTime;

    // final expiryValue = premium?['expiresAt'];

    // final expiryDate = expiryValue is Timestamp
    //     ? expiryValue.toDate()
    //     : null;

    // final status = premium?['status']?.toString();

    // final isSubscriptionActive =
    //     status == 'active' &&
    //     expiryDate != null &&
    //     expiryDate.isAfter(DateTime.now());

    return {
      'name': userData['name'] ??
          user.displayName ??
          'Student',
      'email': userData['email'] ?? user.email ?? '',
      'role': userData['role'] ?? 'student',
      'accountStatus':
          userData['accountStatus'] ?? 'active',
      'registeredDate': registeredDate,
      // 'premium': premium,
      // 'subscribedDate': subscribedDate,
      // 'expiryDate': expiryDate,
      // 'subscriptionStatus': !entitlementLoaded
      //     ? 'Unable to load'
      //     : isSubscriptionActive
      //         ? 'Active'
      //         : premium != null
      //             ? 'Expired / Inactive'
      //             : 'Not subscribed',
      // 'historyLoaded': historyLoaded,
      // 'entitlementLoaded': entitlementLoaded,
    };
  }

  String _formatDate(dynamic value) {
    if (value is! DateTime) {
      return 'Not available';
    }

    const months = [
      'Jan', 'Feb', 'Mar', 'Apr',
      'May', 'Jun', 'Jul', 'Aug',
      'Sep', 'Oct', 'Nov', 'Dec',
    ];

    return '${value.day} '
        '${months[value.month - 1]} '
        '${value.year}';
  }

  Future<void> _logout() async {
    final confirmed = await Get.dialog<bool>(
      AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Logout?'),
        content: const Text(
          'Are you sure you want to logout?',
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Get.back(result: true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.incorrect,
              foregroundColor: Colors.white,
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      await Get.find<AuthController>().signOut();
    } catch (e) {
      Get.snackbar(
        'Logout Failed',
        'Please try again.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: ElevatedButton(
            onPressed: () =>
                Get.offAllNamed(AppRoutes.login),
            child: const Text('Go to Login'),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: profileFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            );
          }

          if (snapshot.hasError || !snapshot.hasData) {
            return const Center(
              child: Text(
                'Unable to load profile details.',
              ),
            );
          }

          final data = snapshot.data!;

          final name = data['name'].toString();
          final email = data['email'].toString();

          final initial =
              name.isNotEmpty ? name[0].toUpperCase() : '?';

          // final premium = data['premium'];
          // final hasSubscriptionRecord = premium != null;

          // final subscriptionDate =
          //     data['historyLoaded'] == false
          //         ? 'Unable to load'
          //         : data['subscribedDate'] == null
          //             ? hasSubscriptionRecord
          //                 ? 'Date not recorded'
          //                 : 'Not subscribed'
          //             : _formatDate(data['subscribedDate']);

          return SafeArea(
            top: false,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(
                      20, 10, 20, 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  
                        // PROFILE HEADER
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    currentUser.photoURL != null
                                        ? NetworkImage(
                                            currentUser.photoURL!,
                                          )
                                        : null,
                                child: currentUser.photoURL == null
                                    ? Text(
                                        initial,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      )
                                    : null,
                              ),
                              const SizedBox(height: 14),
                              Text(
                                name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                email,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.16),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  data['role'].toString().toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  
                        const SizedBox(height: 25),
                  
                        _sectionTitle('Personal Details'),
                  
                        _infoCard([
                  _nameInfoRow(name),
                          _infoRow('Email Address', email),
                          _infoRow(
                            'Account Status',
                            data['accountStatus'].toString(),
                          ),
                          _infoRow(
                            'Registered Date',
                            _formatDate(data['registeredDate']),
                          ),
                        ]),
                  
                        const SizedBox(height: 24),
                  
                        // _sectionTitle('Subscription Details'),
                  
                        // _infoCard([
                        //   _infoRow(
                        //     'Plan',
                        //     hasSubscriptionRecord
                        //         ? 'PYQs Premium'
                        //         : 'No subscription',
                        //   ),
                        //   _infoRow(
                        //     'Subscribed Date',
                        //     subscriptionDate,
                        //   ),
                        //   _infoRow(
                        //     'Expiry Date',
                        //     _formatDate(data['expiryDate']),
                        //   ),
                        //   _infoRow(
                        //     'Status',
                        //     data['subscriptionStatus'].toString(),
                        //   ),
                        // ]),
                  
                  
                        // LOGOUT
                        
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: ElevatedButton(
                    onPressed: _logout,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.incorrect,
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            
          );

          
        },
      ),
      
    );
    
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: AppColors.ink,
        ),
      ),
    );
  }

  Widget _infoCard(List<Widget> children) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.surfaceBorder,
        ),
      ),
      child: Column(children: children),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.muted,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value.isEmpty ? 'Not available' : value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.ink,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

Future<void> _editName(String currentName) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: !false,
    builder: (dialogContext) {
      return EditNameDialog(
        initialName: currentName,
        onSave: (newName) async {
          final user = FirebaseAuth.instance.currentUser;

          if (user == null) {
            throw Exception('User not logged in');
          }

          await FirebaseFirestore.instance
              .collection('users')
              .doc(user.uid)
              .update({'name': newName});

          // Update Firebase Auth display name.
          try {
            await user.updateDisplayName(newName);
          } catch (e) {
            debugPrint('Display name update failed: $e');
          }

          if (mounted) {
            setState(() {
              profileFuture = _loadProfile();
            });
          }
        },
      );
    },
  );
}


Widget _nameInfoRow(String name) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        flex: 4,
        child: Text(
          'Full Name',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
      ),
      Expanded(
        flex: 6,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.end,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF172033),
                ),
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              onPressed: () => _editName(name),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(
                minWidth: 36,
                minHeight: 36,
              ),
              icon: Icon(
                Icons.edit_rounded,
                color: AppColors.primary,
                size: 21,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
}
