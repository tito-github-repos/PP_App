import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/home/controller/home_controller.dart';
import 'package:pp_app/routes/app_routes.dart';
import 'package:pp_app/widgets/plan_detail_card.dart';

import '../../../../core/theme/app_colors.dart';


// class HomeScreen extends GetView<HomeController> {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final authController = Get.find<AuthController>();

//     return Scaffold(
//       backgroundColor: AppColors.background,
//       body: SafeArea(
//         child: RefreshIndicator(
//           color: AppColors.primary,
//           onRefresh: controller.loadSubjects,
//           child: CustomScrollView(
//             physics: const AlwaysScrollableScrollPhysics(),
//             slivers: [
//               // ======================================================
//               // HEADER + WELCOME
//               // ======================================================

//               SliverToBoxAdapter(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(authController),
//                       const SizedBox(height: 20),
//                       _buildWelcomeCard(authController),
//                       const SizedBox(height: 28),
//                       _buildSectionHeader(),
//                       const SizedBox(height: 16),
//                     ],
//                   ),
//                 ),
//               ),

//               // ======================================================
//               // SUBJECT GRID
//               // ======================================================

//               Obx(() {
//                 if (controller.isLoading.value && controller.subjects.isEmpty) {
//                   return _buildLoadingGrid();
//                 }

//                 if (controller.subjects.isEmpty) {
//                   return SliverToBoxAdapter(child: _buildEmptyState());
//                 }

//                 return SliverPadding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   sliver: SliverGrid(
//                     delegate: SliverChildBuilderDelegate(
//                       (context, index) {
//                         final subject = controller.subjects[index];
//                         final data = subject.data();
//                         final name = data['name'] as String? ?? '';

//                         return _buildSubjectCard(
//   name,
//   () => _openSubject(
//     subject.id,
//     name,
//   ),
// );
//                       },
//                       childCount: controller.subjects.length,
//                     ),
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       crossAxisSpacing: 14,
//                       mainAxisSpacing: 14,
//                       mainAxisExtent: 178,
//                     ),
//                   ),
//                 );
//               }),

//               const SliverToBoxAdapter(child: SizedBox(height: 35)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ================================================================
//   // HEADER — app mark, wordmark, logout
//   // ================================================================

//   Widget _buildHeader(AuthController authController) {
//     return Row(
//       children: [
//         Container(
//           height: 50,
//           width: 50,
//           decoration: BoxDecoration(
//             color: AppColors.primary,
//             borderRadius: BorderRadius.circular(16),
//             boxShadow: [
//               BoxShadow(color: AppColors.primary.withOpacity(.20), blurRadius: 14, offset: const Offset(0, 6)),
//             ],
//           ),
//           child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 26),
//         ),
//         const SizedBox(width: 12),
//         const Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('PP', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.5)),
//               SizedBox(height: 3),
//               Text('Learn • Practice • Improve', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.muted)),
//             ],
//           ),
//         ),
//         // Material(
//         //   color: Colors.transparent,
//         //   child: InkWell(
//         //     onTap: () => _confirmLogout(authController),
//         //     borderRadius: BorderRadius.circular(15),
//         //     child: Container(
//         //       height: 46,
//         //       width: 46,
//         //       decoration: BoxDecoration(
//         //         color: AppColors.surface,
//         //         borderRadius: BorderRadius.circular(15),
//         //         border: Border.all(color: AppColors.surfaceBorder),
//         //       ),
//         //       child: const Icon(Icons.logout_rounded, size: 21, color: AppColors.muted),
//         //     ),
//         //   ),
//         // ),

//         Row(
//   children: [
//     // =========================================================
//     // MAIN DASHBOARD BUTTON
//     // =========================================================

//     Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: () {
// Get.offAllNamed(AppRoutes.dashboard);        },
//         borderRadius: BorderRadius.circular(15),
//         child: Container(
//           height: 46,
//           width: 46,
//           decoration: BoxDecoration(
//             color: AppColors.surface,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(
//               color: AppColors.surfaceBorder,
//             ),
//           ),
//           child: const Icon(
//             Icons.dashboard_rounded,
//             size: 21,
//             color: AppColors.muted,
//           ),
//         ),
//       ),
//     ),

//     const SizedBox(width: 8),

//     // =========================================================
//     // LOGOUT BUTTON
//     // =========================================================

//     Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: () => _confirmLogout(authController),
//         borderRadius: BorderRadius.circular(15),
//         child: Container(
//           height: 46,
//           width: 46,
//           decoration: BoxDecoration(
//             color: AppColors.surface,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(
//               color: AppColors.surfaceBorder,
//             ),
//           ),
//           child: const Icon(
//             Icons.logout_rounded,
//             size: 21,
//             color: AppColors.muted,
//           ),
//         ),
//       ),
//     ),
//   ],
// ),
//       ],
//     );
//   }

//   // ================================================================
//   // WELCOME CARD — personalized with avatar/initial + time-aware greeting
//   // ================================================================

//   Widget _buildWelcomeCard(AuthController authController) {
//     final user = authController.currentUser;
//     final rawName = (user?.displayName?.trim().isNotEmpty ?? false)
//         ? user!.displayName!
//         : (user?.email?.split('@').first ?? '');
//     final displayName = _formatName(rawName);
//     final initial = displayName.isNotEmpty ? displayName[0].toUpperCase() : '?';

//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
//       decoration: BoxDecoration(
//         color: AppColors.primary,
//         borderRadius: BorderRadius.circular(27),
//         boxShadow: [
//           BoxShadow(color: AppColors.primary.withOpacity(.22), blurRadius: 20, offset: const Offset(0, 8)),
//         ],
//       ),
//       child: Stack(
//         children: [
//           // ---------------------------------------------------------
//           // DECORATIVE SHAPES
//           // ---------------------------------------------------------

//           Positioned(
//             right: -50,
//             top: -65,
//             child: Container(
//               height: 160,
//               width: 160,
//               decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(.07)),
//             ),
//           ),
//           Positioned(
//             right: 10,
//             bottom: -85,
//             child: Container(
//               height: 145,
//               width: 145,
//               decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(.05)),
//             ),
//           ),

//           // ---------------------------------------------------------
//           // CONTENT
//           // ---------------------------------------------------------

//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 42,
//                     width: 42,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white.withOpacity(.16),
//                       image: user?.photoURL != null
//                           ? DecorationImage(image: NetworkImage(user!.photoURL!), fit: BoxFit.cover)
//                           : null,
//                     ),
//                     child: user?.photoURL == null
//                         ? Center(
//                             child: Text(initial, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700)),
//                           )
//                         : null,
//                   ),
//                   const SizedBox(width: 11),
//                   Text(
//                     _greeting().toUpperCase(),
//                     style: const TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.w800, letterSpacing: 1.1),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 13),

//               const Text(
//                 'Welcome back,',
//                 style: TextStyle(color: Colors.white, fontSize: 22, height: 1.1, fontWeight: FontWeight.w700, letterSpacing: -.4),
//               ),
//               Text(
//                 '${displayName.isEmpty ? 'Learner' : displayName}!',
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(color: Colors.white, fontSize: 25, height: 1.15, fontWeight: FontWeight.w800, letterSpacing: -.5),
//               ),

//               const SizedBox(height: 7),

//               const Text(
//                 'Ready to test what you know today?',
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(color: Colors.white70, fontSize: 12.5, height: 1.3, fontWeight: FontWeight.w500),
//               ),

//               const SizedBox(height: 15),

//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(.13),
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(color: Colors.white.withOpacity(.10)),
//                 ),
//                 child: const Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.auto_awesome_rounded, color: Colors.white, size: 15),
//                     SizedBox(width: 7),
//                     Text('Choose a subject to begin', style: TextStyle(color: Colors.white, fontSize: 11.5, fontWeight: FontWeight.w600)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // ================================================================
//   // SECTION HEADER
//   // ================================================================

//   Widget _buildSectionHeader() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Explore & Practice', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.4)),
//         SizedBox(height: 5),
//         Text('Pick a subject and start testing yourself', style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500, color: AppColors.muted)),
//       ],
//     );
//   }

//   // ================================================================
//   // SUBJECT CARD
//   // ================================================================

//   Widget _buildSubjectCard(String name, VoidCallback onTap) {
//     return Material(
//       color: AppColors.surface,
//       borderRadius: BorderRadius.circular(22),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(22),
//         onTap: onTap,
//         splashColor: AppColors.primary.withOpacity(.06),
//         highlightColor: AppColors.primary.withOpacity(.025),
//         child: Container(
//           padding: const EdgeInsets.all(15),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(22),
//             border: Border.all(color: AppColors.surfaceBorder),
//             boxShadow: [
//               BoxShadow(color: Colors.black.withOpacity(.025), blurRadius: 12, offset: const Offset(0, 5)),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 52,
//                     width: 52,
//                     decoration: BoxDecoration(color: AppColors.primarySoft, borderRadius: BorderRadius.circular(16)),
//                     child: Icon(_subjectIcon(name), color: AppColors.primary, size: 27),
//                   ),
//                   Container(
//                     height: 32,
//                     width: 32,
//                     decoration: const BoxDecoration(color: AppColors.backgroundTint, shape: BoxShape.circle),
//                     child: const Icon(Icons.arrow_forward_rounded, size: 17, color: AppColors.muted),
//                   ),
//                 ],
//               ),
//               const Spacer(),
//               Text(
//                 name,
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(fontSize: 16, height: 1.2, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.2),
//               ),
//               const SizedBox(height: 6),
//               Row(
//                 children: const [
//                   Text('Start practising', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: AppColors.primary)),
//                   SizedBox(width: 4),
//                   Icon(Icons.arrow_forward_rounded, size: 13, color: AppColors.primary),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ================================================================
//   // LOADING GRID
//   // ================================================================

//   Widget _buildLoadingGrid() {
//     return SliverPadding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       sliver: SliverGrid(
//         delegate: SliverChildBuilderDelegate((context, index) => _buildLoadingCard(), childCount: 4),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 14,
//           mainAxisSpacing: 14,
//           mainAxisExtent: 178,
//         ),
//       ),
//     );
//   }

//   Widget _buildLoadingCard() {
//     return Container(
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: AppColors.surface,
//         borderRadius: BorderRadius.circular(22),
//         border: Border.all(color: AppColors.surfaceBorder),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(height: 52, width: 52, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(16))),
//           const Spacer(),
//           Container(height: 15, width: 85, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(7))),
//           const SizedBox(height: 8),
//           Container(height: 11, width: 65, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(6))),
//         ],
//       ),
//     );
//   }

//   // ================================================================
//   // EMPTY STATE
//   // ================================================================

//   Widget _buildEmptyState() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(25, 45, 25, 20),
//       child: Column(
//         children: [
//           Container(
//             height: 82,
//             width: 82,
//             decoration: const BoxDecoration(color: AppColors.primarySoft, shape: BoxShape.circle),
//             child: const Icon(Icons.auto_stories_rounded, color: AppColors.primary, size: 38),
//           ),
//           const SizedBox(height: 18),
//           const Text('No subjects yet', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.ink)),
//           const SizedBox(height: 7),
//           const Text(
//             'New subjects will appear here soon.',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 13, height: 1.4, color: AppColors.muted),
//           ),
//           const SizedBox(height: 18),
//           OutlinedButton.icon(
//             onPressed: controller.loadSubjects,
//             icon: const Icon(Icons.refresh_rounded, size: 18),
//             label: const Text('Refresh'),
//             style: OutlinedButton.styleFrom(
//               foregroundColor: AppColors.primary,
//               side: BorderSide(color: AppColors.primary.withOpacity(.35)),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
//               padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // ================================================================
//   // LOGOUT CONFIRMATION
//   // ================================================================

//   void _confirmLogout(AuthController authController) {
//     Get.dialog(
//       Dialog(
//         backgroundColor: AppColors.surface,
//         insetPadding: const EdgeInsets.symmetric(horizontal: 28),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(22, 24, 22, 20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 height: 58,
//                 width: 58,
//                 decoration: BoxDecoration(color: AppColors.incorrect.withOpacity(.08), shape: BoxShape.circle),
//                 child: const Icon(Icons.logout_rounded, color: AppColors.incorrect, size: 27),
//               ),
//               const SizedBox(height: 17),
//               const Text('Sign out?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.ink)),
//               const SizedBox(height: 7),
//               const Text(
//                 'Are you sure you want to sign out of your account?',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 13, height: 1.4, color: AppColors.muted),
//               ),
//               const SizedBox(height: 22),
//               Row(
//                 children: [
//                   Expanded(
//                     child: OutlinedButton(
//                       onPressed: () => Get.back(),
//                       style: OutlinedButton.styleFrom(
//                         foregroundColor: AppColors.muted,
//                         side: const BorderSide(color: AppColors.surfaceBorder),
//                         padding: const EdgeInsets.symmetric(vertical: 13),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
//                       ),
//                       child: const Text('Cancel', style: TextStyle(fontWeight: FontWeight.w700)),
//                     ),
//                   ),
//                   const SizedBox(width: 11),
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Get.back();
//                         authController.signOut();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.incorrect,
//                         foregroundColor: Colors.white,
//                         elevation: 0,
//                         padding: const EdgeInsets.symmetric(vertical: 13),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
//                       ),
//                       child: const Text('Sign Out', style: TextStyle(fontWeight: FontWeight.w700)),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ================================================================
//   // HELPERS
//   // ================================================================

//   String _greeting() {
//     final hour = DateTime.now().hour;
//     if (hour < 12) return 'Good morning';
//     if (hour < 17) return 'Good afternoon';
//     return 'Good evening';
//   }

//   String _formatName(String value) {
//     final name = value.trim();
//     if (name.isEmpty) return '';
//     return name
//         .split(RegExp(r'\s+'))
//         .where((word) => word.isNotEmpty)
//         .map((word) => word.length == 1 ? word.toUpperCase() : word[0].toUpperCase() + word.substring(1).toLowerCase())
//         .join(' ');
//   }

//   IconData _subjectIcon(String name) {
//     final key = name.toLowerCase();
//     if (key.contains('science')) return Icons.science_rounded;
//     if (key.contains('geograph')) return Icons.public_rounded;
//     if (key.contains('histor')) return Icons.museum_rounded;
//     if (key.contains('polity') || key.contains('politic')) return Icons.gavel_rounded;
//     if (key.contains('econom')) return Icons.attach_money_rounded;
//     if (key.contains('environment')) return Icons.eco_rounded;
//     if (key.contains('current')) return Icons.article_rounded;
//     if (key.contains('math')) return Icons.functions_rounded;
//     return Icons.menu_book_rounded;
//   }


//   Future<void> _openSubject(
//   String subjectId,
//   String subjectName,
// ) async {
//   try {
//     final snapshot = await FirebaseFirestore.instance
//         .collection('subjects')
//         .doc(subjectId)
//         .collection('sections')
//         .limit(1)
//         .get();

//     if (snapshot.docs.isNotEmpty) {
//       // Subject has sections
//       Get.toNamed(
//         AppRoutes.sections,
//         arguments: {
//           'subjectId': subjectId,
//           'subjectName': subjectName,
//         },
//       );
//     } else {
//       // Subject has no sections
//       // Go directly to Topics
//       Get.toNamed(
//         AppRoutes.topics,
//         arguments: {
//           'subjectId': subjectId,
//           'subjectName': subjectName,
//         },
//       );
//     }
//   } catch (e) {
//     Get.snackbar(
//       'Error',
//       'Unable to open $subjectName.',
//       snackPosition: SnackPosition.BOTTOM,
//     );
//   }
// }
// }




class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          color: AppColors.primary,
onRefresh: () async {
  await Future.wait([
    controller.loadSubjects(),
    controller.loadStreak(),
  ]);
},          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              // ======================================================
              // HEADER + PLAN
              // ======================================================

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 20),
                      const 
//  PlanDetailsCard(
//   planLabel: 'PYQs (2011–2026)',
//   summary: 'Learn Happily, Learn Easily and Learn Daily.',
//   accent: AppColors.primary,
//   accentSoft: AppColors.primarySoft,
//   accentDark: AppColors.primaryDark,
//   features: [
//     'PYQs from 2011 to 2026 are converted into facts vs non-facts.',
//     'Statements tested as True or False.',
//     'While solving, apply principles of learning.',
//     'Learn Happily, Learn Easily and Learn Daily.',
//     'Start Solving.',
//   ],
// ),

PlanDetailsCard(
  planLabel: 'PYQs (2011–2026)',
  summary: 'Learn Happily, Learn Easily and Learn Daily.',
  accent: AppColors.primary,
  accentSoft: AppColors.primarySoft,
  accentDark: AppColors.primaryDark,

  // NEW INTRO CONTENT
  introText:
      'Mobile app addresses syllabus coverage, by providing facts in an easy format, incrementally.',

  introPoints: [
    'Facts per subject added incrementally',
    'New facts added every week',
    'Revise more, in the shortest possible time',
  ],

  highlightedIntroPoint:
      'Revise more, in the shortest possible time',

  // EXISTING FEATURES
  features: [
    'PYQs from 2011 to 2026 are converted into facts vs non-facts.',
    'Statements tested as True or False.',
    'While solving, apply principles of learning.',
    'Learn Happily, Learn Easily and Learn Daily.',
    'Start Solving.',
  ],
),

                      // PlanDetailsCard(
                      //   planLabel: 'Prelims Practice',
                      //   summary: 'Free for Mains students · ₹1,111/mo or ₹111/day for others',
                      //   accent: AppColors.primary,
                      //   accentSoft: AppColors.primarySoft,
                      //   accentDark: AppColors.primaryDark,
                      //   features: [
                      //     '~10,000 facts for every subject, added incrementally',
                      //     'New facts added every week',
                      //     'Play daily — true or false, like a quick game',
                      //     '100 mock tests available from 3 Feb 2027',
                      //   ],
                      // ),

                      const SizedBox(height: 18),

                      //  StreakCard(controller: controller),
                      _buildStreakCard(),
                                            const SizedBox(height: 28),

                      _buildSectionHeader(),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),

              // ======================================================
              // SUBJECT GRID
              // ======================================================

              Obx(() {
                if (controller.isLoading.value && controller.subjects.isEmpty) {
                  return _buildLoadingGrid();
                }

                if (controller.subjects.isEmpty) {
                  return SliverToBoxAdapter(child: _buildEmptyState());
                }

                return SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final subject = controller.subjects[index];
                        final data = subject.data();
                        final name = data['name'] as String? ?? '';

                        return _buildSubjectCard(
                          name,
                          () => _openSubject(subject.id, name),
                        );
                      },
                      childCount: controller.subjects.length,
                    ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      mainAxisExtent: 178,
                    ),
                  ),
                );
              }),

              const SliverToBoxAdapter(child: SizedBox(height: 35)),
            ],
          ),
        ),
      ),
    );
  }

  // ================================================================
  // HEADER — app mark, wordmark, dashboard + logout
  // ================================================================

Widget _buildHeader() {
  return Row(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(.20),
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Eases GS Prelims',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.muted,
              ),
            ),
          ],
        ),
      ),

      // DASHBOARD BUTTON
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.offAllNamed(AppRoutes.dashboard),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColors.surfaceBorder,
              ),
            ),
            child: const Icon(
              Icons.dashboard_rounded,
              size: 21,
              color: AppColors.muted,
            ),
          ),
        ),
      ),

      const SizedBox(width: 8),

      // PROFILE BUTTON
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.toNamed(AppRoutes.profile),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColors.surfaceBorder,
              ),
            ),
            child: const Icon(
              Icons.person_outline_rounded,
              size: 23,
              color: AppColors.muted,
            ),
          ),
        ),
      ),
    ],
  );
}


  // ================================================================
  // SECTION HEADER
  // ================================================================
// Widget _buildStreakCard() {
//   return Obx(() {
//     final streak = controller.currentStreak.value;

//     // Unlock based on streak count
//     final silverUnlocked = streak >= 30;
//     final goldUnlocked = streak >= 60;

//     final progress = (streak / 60).clamp(0.0, 1.0);

//     String title;
//     String subtitle;

//     if (goldUnlocked) {
//       title = '60 Day Streak';
//       subtitle = 'Gold Badge unlocked!';
//     } else if (silverUnlocked) {
//       title = '$streak Day Streak';
//       subtitle = '${60 - streak} more days to Gold';
//     } else {
//       title = '$streak Day Streak';
//       subtitle = '${30 - streak} more days to Silver';
//     }

//     return Material(
//       color: AppColors.surface,
//       borderRadius: BorderRadius.circular(22),
//       clipBehavior: Clip.antiAlias,
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(22),
//           border: Border.all(
//             color: AppColors.surfaceBorder,
//           ),
//         ),
//         child: Theme(
//           data: Theme.of(Get.context!).copyWith(
//             dividerColor: Colors.transparent,
//           ),
//           child: ExpansionTile(
//             tilePadding: const EdgeInsets.fromLTRB(
//               18,
//               10,
//               14,
//               10,
//             ),
//             childrenPadding: const EdgeInsets.fromLTRB(
//               18,
//               0,
//               18,
//               18,
//             ),

//             leading: Container(
//               width: 52,
//               height: 52,
//               decoration: BoxDecoration(
//                 color: AppColors.primarySoft,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Icon(
//                 goldUnlocked
//                     ? Icons.workspace_premium_rounded
//                     : Icons.local_fire_department_rounded,
//                 color: AppColors.primary,
//                 size: 28,
//               ),
//             ),

//             title: Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w800,
//                 color: AppColors.ink,
//               ),
//             ),

//             subtitle: Padding(
//               padding: const EdgeInsets.only(top: 4),
//               child: Text(
//                 subtitle,
//                 style: const TextStyle(
//                   fontSize: 12.5,
//                   color: AppColors.muted,
//                 ),
//               ),
//             ),

//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: LinearProgressIndicator(
//                   value: progress,
//                   minHeight: 8,
//                   backgroundColor: AppColors.primarySoft,
//                   color: AppColors.primary,
//                 ),
//               ),

//               const SizedBox(height: 8),

//               Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '$streak / 60 days',
//                     style: const TextStyle(
//                       fontSize: 11.5,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.muted,
//                     ),
//                   ),

//                   Text(
//                     goldUnlocked
//                         ? 'Gold unlocked'
//                         : '${60 - streak} days to Gold',
//                     style: const TextStyle(
//                       fontSize: 11.5,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.primary,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 16),

//               _buildRewardRow(
//                 icon: Icons.workspace_premium_rounded,
//                 title: 'Silver • 30 Days',
//                 reward:
//                     'Free Prelims mock practice (₹1,111 value)',
//                 unlocked: silverUnlocked,
//               ),

//               const SizedBox(height: 10),

//               _buildRewardRow(
//                 icon: Icons.workspace_premium_rounded,
//                 title: 'Gold • 60 Days',
//                 reward:
//                     '1 hour free Prelims consultation',
//                 unlocked: goldUnlocked,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   });
// }


Widget _buildStreakCard() {
  return Obx(() {
    final streak = controller.currentStreak.value;

    // All three rewards unlock after 7 consecutive days.
    final allRewardsUnlocked =
        controller.silverBadge.value || streak >= 7;

    final progress =
        (streak.clamp(0, 7) / 7).toDouble();

    final remainingDays = (7 - streak).clamp(0, 7);

    final subtitle = allRewardsUnlocked
        ? 'All 3 Silver Streak rewards unlocked!'
        : '$remainingDays more ${remainingDays == 1 ? 'day' : 'days'} to unlock all 3 rewards';

    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(22),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: AppColors.surfaceBorder,
          ),
        ),
        child: Theme(
          data: Theme.of(Get.context!).copyWith(
            dividerColor: Colors.transparent,
          ),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.fromLTRB(
              18, 10, 14, 10,
            ),
            childrenPadding: const EdgeInsets.fromLTRB(
              18, 0, 18, 18,
            ),
            leading: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: AppColors.primarySoft,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.local_fire_department_rounded,
                color: AppColors.primary,
                size: 28,
              ),
            ),
            title: Text(
              '$streak Day Streak',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: AppColors.ink,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12.5,
                  color: AppColors.muted,
                ),
              ),
            ),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,
                  backgroundColor: AppColors.primarySoft,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${streak.clamp(0, 7)} / 7 days',
                    style: const TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: AppColors.muted,
                    ),
                  ),
                  Text(
                    allRewardsUnlocked
                        ? 'All rewards unlocked'
                        : '$remainingDays days to go',
                    style: const TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              _buildRewardRow(
                icon: Icons.school_rounded,
                title: 'CSAT Online Classes',
                reward: 'Free CSAT Online Classes',
                unlocked: allRewardsUnlocked,
              ),

              const SizedBox(height: 10),

              _buildRewardRow(
                icon: Icons.people_alt_rounded,
                title: 'Prelims One-to-One Consulting',
                reward: 'Free Prelims One-to-One Consulting',
                unlocked: allRewardsUnlocked,
              ),

              const SizedBox(height: 10),

              _buildRewardRow(
                icon: Icons.workspace_premium_rounded,
                title: 'Mains One-to-One Consulting',
                reward: 'Free Mains One-to-One Consulting',
                unlocked: allRewardsUnlocked,
              ),
            ],
          ),
        ),
      ),
    );
  });
}
// Widget _buildRewardRow({
//   required IconData icon,
//   required String title,
//   required String reward,
//   required bool unlocked,
// }) {
//   return Container(
//     padding: const EdgeInsets.all(12),
//     decoration: BoxDecoration(
//       color: unlocked
//           ? AppColors.primarySoft
//           : AppColors.background,
//       borderRadius: BorderRadius.circular(14),
//       border: Border.all(
//         color: AppColors.surfaceBorder,
//       ),
//     ),
//     child: Row(
//       children: [
//         Icon(
//           icon,
//           size: 23,
//           color: unlocked
//               ? AppColors.primary
//               : AppColors.muted,
//         ),

//         const SizedBox(width: 12),

//         Expanded(
//           child: Column(
//             crossAxisAlignment:
//                 CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 13.5,
//                   fontWeight: FontWeight.w800,
//                   color: unlocked
//                       ? AppColors.primary
//                       : AppColors.ink,
//                 ),
//               ),

//               const SizedBox(height: 3),

//               Text(
//                 reward,
//                 style: const TextStyle(
//                   fontSize: 11.5,
//                   height: 1.3,
//                   color: AppColors.muted,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         if (unlocked)
//           const Icon(
//             Icons.check_circle_rounded,
//             size: 21,
//             color: AppColors.primary,
//           )
//         else
//           const Icon(
//             Icons.lock_outline_rounded,
//             size: 19,
//             color: AppColors.muted,
//           ),
//       ],
//     ),
//   );
// }

Widget _buildRewardRow({
  required IconData icon,
  required String title,
  required String reward,
  required bool unlocked,
}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: unlocked
          ? AppColors.primarySoft
          : AppColors.background,
      borderRadius: BorderRadius.circular(14),
      border: Border.all(
        color: AppColors.surfaceBorder,
      ),
    ),
    child: Row(
      children: [
        Icon(
          icon,
          size: 23,
          color: unlocked
              ? AppColors.primary
              : AppColors.muted,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w800,
                  color: unlocked
                      ? AppColors.primary
                      : AppColors.ink,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                reward,
                style: const TextStyle(
                  fontSize: 11.5,
                  height: 1.3,
                  color: AppColors.muted,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'FREE',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Icon(
          unlocked
              ? Icons.check_circle_rounded
              : Icons.lock_outline_rounded,
          size: 21,
          color: unlocked
              ? AppColors.primary
              : AppColors.muted,
        ),
      ],
    ),
  );
}
  Widget _buildSectionHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Explore & Practice', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.4)),
        SizedBox(height: 5),
        Text('Pick a subject and start testing yourself', style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w500, color: AppColors.muted)),
      ],
    );
  }

  // ================================================================
  // SUBJECT CARD
  // ================================================================

  Widget _buildSubjectCard(String name, VoidCallback onTap) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        splashColor: AppColors.primary.withOpacity(.06),
        highlightColor: AppColors.primary.withOpacity(.025),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.surfaceBorder),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.025), blurRadius: 12, offset: const Offset(0, 5)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(color: AppColors.primarySoft, borderRadius: BorderRadius.circular(16)),
                    child: Icon(_subjectIcon(name), color: AppColors.primary, size: 27),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(color: AppColors.backgroundTint, shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_forward_rounded, size: 17, color: AppColors.muted),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 16, height: 1.2, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.2),
              ),
              const SizedBox(height: 6),
              Row(
                children: const [
                  Text('Start practising', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: AppColors.primary)),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_rounded, size: 13, color: AppColors.primary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ================================================================
  // LOADING GRID
  // ================================================================

  Widget _buildLoadingGrid() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) => _buildLoadingCard(), childCount: 4),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
          mainAxisExtent: 178,
        ),
      ),
    );
  }

  Widget _buildLoadingCard() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.surfaceBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 52, width: 52, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(16))),
          const Spacer(),
          Container(height: 15, width: 85, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(7))),
          const SizedBox(height: 8),
          Container(height: 11, width: 65, decoration: BoxDecoration(color: AppColors.backgroundTint, borderRadius: BorderRadius.circular(6))),
        ],
      ),
    );
  }

  // ================================================================
  // EMPTY STATE
  // ================================================================

  Widget _buildEmptyState() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 45, 25, 20),
      child: Column(
        children: [
          Container(
            height: 82,
            width: 82,
            decoration: const BoxDecoration(color: AppColors.primarySoft, shape: BoxShape.circle),
            child: const Icon(Icons.auto_stories_rounded, color: AppColors.primary, size: 38),
          ),
          const SizedBox(height: 18),
          const Text('No subjects yet', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.ink)),
          const SizedBox(height: 7),
          const Text(
            'New subjects will appear here soon.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, height: 1.4, color: AppColors.muted),
          ),
          const SizedBox(height: 18),
          OutlinedButton.icon(
            onPressed: controller.loadSubjects,
            icon: const Icon(Icons.refresh_rounded, size: 18),
            label: const Text('Refresh'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: BorderSide(color: AppColors.primary.withOpacity(.35)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
            ),
          ),
        ],
      ),
    );
  }

  // ================================================================
  // LOGOUT CONFIRMATION
  // ================================================================

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

  // ================================================================
  // HELPERS
  // ================================================================

  IconData _subjectIcon(String name) {
    final key = name.toLowerCase();
    if (key.contains('science')) return Icons.science_rounded;
    if (key.contains('geograph')) return Icons.public_rounded;
    if (key.contains('histor')) return Icons.museum_rounded;
    if (key.contains('polity') || key.contains('politic')) return Icons.gavel_rounded;
    if (key.contains('econom')) return Icons.attach_money_rounded;
    if (key.contains('environment')) return Icons.eco_rounded;
    if (key.contains('current')) return Icons.article_rounded;
    if (key.contains('math')) return Icons.functions_rounded;
    return Icons.menu_book_rounded;
  }

  Future<void> _openSubject(String subjectId, String subjectName) async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('subjects')
          .doc(subjectId)
          .collection('sections')
          .limit(1)
          .get();

      if (snapshot.docs.isNotEmpty) {
        Get.toNamed(
          AppRoutes.sections,
          arguments: {'subjectId': subjectId, 'subjectName': subjectName},
        );
      } else {
        Get.toNamed(
          AppRoutes.topics,
          arguments: {'subjectId': subjectId, 'subjectName': subjectName},
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'Unable to open $subjectName.', snackPosition: SnackPosition.BOTTOM);
    }
  }
}