import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/mainsHome/controller/main_home_controller.dart';
import 'package:pp_app/routes/app_routes.dart';

import 'package:pp_app/widgets/plan_detail_card.dart';


class MainHomeScreen extends GetView<MainHomeController> {

  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

        final authController = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: controller.loadPractices,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ========================================================
                // HEADER
                // ========================================================

                _buildHeader(authController),

                const SizedBox(height: 20),

                // ========================================================
                // PLAN DETAILS
                // ========================================================

                const PlanDetailsCard(
                  planLabel: 'Mains Practice',
                  summary: '₹11,111 · valid for 2027 season · includes Prelims free',
                  accent: AppColors.secondary,
                  accentSoft: AppColors.secondarySoft,
                  accentDark: AppColors.secondaryDark,
                  features: [
                    'Fee is inclusive of Prelims Practice — no extra cost',
                    'Paper-, syllabus- and topic-wise answer writing using PYQs (till 31 Dec 2026)',
                    '3-hour paper · 20 questions per test',
                    'Every answer paper evaluated, analyzed and discussed one-to-one',
                    'After Prelims: 12 evaluated tests per paper, discussed individually',
                  ],
                ),

                const SizedBox(height: 28),

                // ========================================================
                // SECTION TITLE
                // ========================================================

                _buildSectionHeader(),

                      const SizedBox(height: 16),

                // ========================================================
                // PRACTICE GRID
                // ========================================================

                Obx(() {
                  if (controller.isLoading.value) {
                    return const SizedBox(
                      height: 300,
                      child: Center(child: CircularProgressIndicator(color: AppColors.secondary)),
                    );
                  }

                  if (controller.practices.isEmpty) {
                    return _buildEmptyState();
                  }

                  return GridView.builder(

                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      mainAxisExtent: 178,
                    ),
                    itemCount: controller.practices.length,
                    itemBuilder: (context, index) {
                      final practice = controller.practices[index];
                      final data = practice.data();
                      final name = data['name']?.toString().trim().isNotEmpty == true ? data['name'].toString() : practice.id;

                      return _buildPracticeCard(
                        name: name,
                        onTap: () => controller.openPractice(practice.id, name),
                      );
                    },
                  );
                }),

                
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ================================================================
  // HEADER
  // ================================================================





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
  Widget _buildHeader(AuthController authController) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: AppColors.secondary.withOpacity(.20), blurRadius: 14, offset: const Offset(0, 6)),
            ],
          ),
          child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 26),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PP', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -.5)),
              SizedBox(height: 3),
              Text('Mains Practice', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.muted)),
            ],
          ),
        ),

        // -----------------------------------------------------------
        // DASHBOARD BUTTON
        // -----------------------------------------------------------

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
                border: Border.all(color: AppColors.surfaceBorder),
              ),
              child: const Icon(Icons.dashboard_rounded, size: 21, color: AppColors.muted),
            ),
          ),
        ),

        const SizedBox(width: 8),

        // -----------------------------------------------------------
        // LOGOUT BUTTON
        // -----------------------------------------------------------

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


  // ================================================================
  // PRACTICE CARD
  // ================================================================

  Widget _buildPracticeCard({required String name, required VoidCallback onTap}) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(22),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.surface,
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
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(color: AppColors.secondary.withOpacity(.09), borderRadius: BorderRadius.circular(17)),
                    child: const Icon(Icons.menu_book_rounded, size: 27, color: AppColors.secondary),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(color: AppColors.secondary.withOpacity(.035), shape: BoxShape.circle),
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
              const SizedBox(height: 9),
              const Row(
                children: [
                             Text('Start practising', style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: AppColors.secondary)),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_rounded, size: 13, color: AppColors.secondary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ================================================================
  // EMPTY STATE
  // ================================================================

  Widget _buildEmptyState() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.surfaceBorder),
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(color: AppColors.secondary.withOpacity(.09), borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.menu_book_rounded, size: 34, color: AppColors.secondary),
          ),
          const SizedBox(height: 16),
          const Text('No practice available', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.ink)),
          const SizedBox(height: 7),
          const Text(
            'No active practice is available yet.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: AppColors.muted),
          ),
          const SizedBox(height: 18),
          OutlinedButton.icon(
            onPressed: controller.loadPractices,
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Try Again'),
            style: OutlinedButton.styleFrom(foregroundColor: AppColors.secondary, side: BorderSide(color: AppColors.secondary.withOpacity(.35))),
          ),
        ],
      ),
    );
  }
}