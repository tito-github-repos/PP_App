import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/core/theme/app_colors.dart';

import '../../routes/app_routes.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.fromLTRB(22, 24, 22, 30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // =========================================================
//               // HEADER
//               // =========================================================

//               Row(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: AppColors.primary,
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: const Icon(
//                       Icons.menu_book_rounded,
//                       color: Colors.white,
//                       size: 26,
//                     ),
//                   ),

//                   const SizedBox(width: 12),

//                   const Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'PP',
//                           style: TextStyle(
//                             fontSize: 21,
//                             fontWeight: FontWeight.w800,
//                             color: AppColors.ink,
//                           ),
//                         ),
//                         SizedBox(height: 3),
//                         Text(
//                           'Learn • Practice • Improve',
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w500,
//                             color: AppColors.muted,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   IconButton(
//                     onPressed: () {
//                       Get.dialog(
//                         AlertDialog(
//                           title: const Text('Sign out?'),
//                           content: const Text(
//                             'Are you sure you want to sign out?',
//                           ),
//                           actions: [
//                             TextButton(
//                               onPressed: Get.back,
//                               child: const Text('Cancel'),
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Get.back();
//                                 Get.find<AuthController>().signOut();
//                               },
//                               child: const Text('Sign Out'),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     icon: const Icon(
//                       Icons.logout_rounded,
//                       color: AppColors.muted,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 42),

//               // =========================================================
//               // TITLE
//               // =========================================================

//               const Text(
//                 'Choose your practice',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.w800,
//                   color: AppColors.ink,
//                   letterSpacing: -.6,
//                 ),
//               ),

//               const SizedBox(height: 8),

//               const Text(
//                 'Select a practice section to begin.',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: AppColors.muted,
//                   height: 1.4,
//                 ),
//               ),

//               const SizedBox(height: 30),

//               // =========================================================
//               // PRELIMS PRACTICE
//               // =========================================================

//               _buildPracticeCard(
//                 title: 'Prelims Practice',
//                 subtitle: 'Practice questions and improve your prelims preparation.',
//                 icon: Icons.school_rounded,
//                 color: AppColors.primary,
//                 onTap: () {
//                   Get.toNamed(AppRoutes.home);
//                 },
//               ),

//               const SizedBox(height: 18),

//               // =========================================================
//               // MAIN PRACTICE
//               // =========================================================

//               _buildPracticeCard(
//   title: 'Mains Practice',
//   subtitle: 'Prepare for mains-level questions and practice.',
//   icon: Icons.menu_book_rounded,
//   color: Colors.deepOrange,
//   isComingSoon: false,
//   onTap: () {
//     Get.toNamed(AppRoutes.mainHome);
//   },
// ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // =========================================================
//   // PRACTICE CARD
//   // =========================================================

//   Widget _buildPracticeCard({
//     required String title,
//     required String subtitle,
//     required IconData icon,
//     required Color color,
//     required VoidCallback onTap,
//     bool isComingSoon = false,
//   }) {
//     return Material(
//       color: AppColors.surface,
//       borderRadius: BorderRadius.circular(25),
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(25),
//         child: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(25),
//             border: Border.all(
//               color: AppColors.surfaceBorder,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(.035),
//                 blurRadius: 18,
//                 offset: const Offset(0, 7),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               // Icon
//               Container(
//                 height: 62,
//                 width: 62,
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(.10),
//                   borderRadius: BorderRadius.circular(19),
//                 ),
//                 child: Icon(
//                   icon,
//                   color: color,
//                   size: 31,
//                 ),
//               ),

//               const SizedBox(width: 17),

//               // Text
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             title,
//                             style: const TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w800,
//                               color: AppColors.ink,
//                             ),
//                           ),
//                         ),

//                         if (isComingSoon)
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 8,
//                               vertical: 4,
//                             ),
//                             decoration: BoxDecoration(
//                               color: AppColors.backgroundTint,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: const Text(
//                               'Soon',
//                               style: TextStyle(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.w700,
//                                 color: AppColors.muted,
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),

//                     const SizedBox(height: 6),

//                     Text(
//                       subtitle,
//                       style: const TextStyle(
//                         fontSize: 12.5,
//                         height: 1.4,
//                         color: AppColors.muted,
//                       ),
//                     ),

//                     const SizedBox(height: 13),

//                     Row(
//                       children: [
//                         Text(
//                           isComingSoon
//                               ? 'Coming soon'
//                               : 'Start practising',
//                           style: TextStyle(
//                             fontSize: 11.5,
//                             fontWeight: FontWeight.w700,
//                             color: color,
//                           ),
//                         ),
//                         const SizedBox(width: 5),
//                         Icon(
//                           isComingSoon
//                               ? Icons.lock_outline_rounded
//                               : Icons.arrow_forward_rounded,
//                           size: 14,
//                           color: color,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================================================
              // HEADER
              // =========================================================

              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 26),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PP', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: AppColors.ink)),
                        SizedBox(height: 3),
                        Text('Learn • Practice • Improve', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.muted)),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => _confirmLogout(authController),
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.surfaceBorder),
                        ),
                        child: const Icon(Icons.logout_rounded, size: 21, color: AppColors.muted),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // =========================================================
              // WELCOME CARD — lives here only; the two home screens show
              // their plan details in this slot instead.
              // =========================================================

              _buildWelcomeCard(authController),

              const SizedBox(height: 30),

              // =========================================================
              // TITLE
              // =========================================================

              const Text(
                'Choose your practice',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.5),
              ),
              const SizedBox(height: 8),
              const Text(
                'Select a practice section to begin.',
                style: TextStyle(fontSize: 14, color: AppColors.muted, height: 1.4),
              ),

              const SizedBox(height: 24),

              // =========================================================
              // PRELIMS PRACTICE
              // =========================================================

              _buildPracticeCard(
                title: 'Prelims Practice',
                subtitle: 'Daily true/false practice across every subject.',
                icon: Icons.school_rounded,
                accent: AppColors.primary,
                accentSoft: AppColors.primarySoft,
                onTap: () => Get.toNamed(AppRoutes.home),
              ),

              const SizedBox(height: 18),

              // =========================================================
              // MAINS PRACTICE
              // =========================================================

              _buildPracticeCard(
                title: 'Mains Practice',
                subtitle: 'Evaluated answer-writing practice for the mains exam.',
                icon: Icons.edit_note_rounded,
                accent: AppColors.secondary,
                accentSoft: AppColors.secondarySoft,
                onTap: () => Get.toNamed(AppRoutes.mainHome),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================================================
  // WELCOME CARD — personalized with avatar/initial + time-aware greeting
  // =========================================================

  Widget _buildWelcomeCard(AuthController authController) {
    final user = authController.currentUser;
    final rawName = (user?.displayName?.trim().isNotEmpty ?? false)
        ? user!.displayName!
        : (user?.email?.split('@').first ?? '');
    final displayName = _formatName(rawName);
    final initial = displayName.isNotEmpty ? displayName[0].toUpperCase() : '?';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withOpacity(.22), blurRadius: 20, offset: const Offset(0, 8)),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -50,
            top: -65,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(.07)),
            ),
          ),
          Positioned(
            right: 10,
            bottom: -85,
            child: Container(
              height: 145,
              width: 145,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(.05)),
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
                      image: user?.photoURL != null
                          ? DecorationImage(image: NetworkImage(user!.photoURL!), fit: BoxFit.cover)
                          : null,
                    ),
                    child: user?.photoURL == null
                        ? Center(
                            child: Text(initial, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700)),
                          )
                        : null,
                  ),
                  const SizedBox(width: 11),
                  Text(
                    _greeting().toUpperCase(),
                    style: const TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.w800, letterSpacing: 1.1),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              const Text(
                'Welcome back,',
                style: TextStyle(color: Colors.white, fontSize: 22, height: 1.1, fontWeight: FontWeight.w700, letterSpacing: -.4),
              ),
              Text(
                '${displayName.isEmpty ? 'Learner' : displayName}!',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 25, height: 1.15, fontWeight: FontWeight.w800, letterSpacing: -.5),
              ),
              const SizedBox(height: 7),
              const Text(
                'Two tracks, one goal — pick up where you left off.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white70, fontSize: 12.5, height: 1.3, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // =========================================================
  // PRACTICE CARD
  // =========================================================

  Widget _buildPracticeCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color accent,
    required Color accentSoft,
    required VoidCallback onTap,
  }) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        splashColor: accent.withOpacity(.06),
        highlightColor: accent.withOpacity(.025),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.surfaceBorder),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.025), blurRadius: 12, offset: const Offset(0, 5)),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(color: accentSoft, borderRadius: BorderRadius.circular(16)),
                child: Icon(icon, color: accent, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: AppColors.ink)),
                    const SizedBox(height: 4),
                    Text(subtitle, style: const TextStyle(fontSize: 12.5, height: 1.4, color: AppColors.muted)),
                    const SizedBox(height: 11),
                    Row(
                      children: [
                        Text('Start practising', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: accent)),
                        const SizedBox(width: 4),
                        Icon(Icons.arrow_forward_rounded, size: 14, color: accent),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _confirmLogout(AuthController authController) {
    Get.dialog(
      Dialog(
        backgroundColor: AppColors.surface,
        insetPadding: const EdgeInsets.symmetric(horizontal: 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(color: AppColors.incorrect.withOpacity(.08), shape: BoxShape.circle),
                child: const Icon(Icons.logout_rounded, color: AppColors.incorrect, size: 27),
              ),
              const SizedBox(height: 17),
              const Text('Sign out?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.ink)),
              const SizedBox(height: 7),
              const Text(
                'Are you sure you want to sign out of your account?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, height: 1.4, color: AppColors.muted),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.back(),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.muted,
                        side: const BorderSide(color: AppColors.surfaceBorder),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                      ),
                      child: const Text('Cancel', style: TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                        authController.signOut();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.incorrect,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                      ),
                      child: const Text('Sign Out', style: TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================================================
  // HELPERS
  // =========================================================

  String _greeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }

  String _formatName(String value) {
    final name = value.trim();
    if (name.isEmpty) return '';
    return name
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .map((word) => word.length == 1 ? word.toUpperCase() : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }
}