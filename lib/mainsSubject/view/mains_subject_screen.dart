import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/mainsSubject/controller/mains_subject_controller.dart';



import '../../core/theme/app_colors.dart';


class MainSubjectsScreen
    extends GetView<MainSubjectsController> {
  const MainSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // ============================================================
      // APP BAR
      // ============================================================

      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,

        title: Text(
          controller.practiceName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: AppColors.ink,
          ),
        ),
      ),

      // ============================================================
      // BODY
      // ============================================================

      body: Obx(() {
        // ----------------------------------------------------------
        // LOADING
        // ----------------------------------------------------------

        if (controller.isLoading.value &&
            controller.subjects.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }

        // ----------------------------------------------------------
        // EMPTY
        // ----------------------------------------------------------

        if (controller.subjects.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,

                    decoration: BoxDecoration(
                      color: AppColors.primarySoft,
                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: const Icon(
                      Icons.menu_book_rounded,
                      color: AppColors.primary,
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'No subjects available',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ink,
                    ),

                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Pull to refresh, or check back shortly.',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.muted,
                    ),

                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        // ----------------------------------------------------------
        // SUBJECT LIST
        // ----------------------------------------------------------

        return RefreshIndicator(
          color: AppColors.primary,

          onRefresh: controller.loadSubjects,

          child: ListView(
            padding: const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              20,
            ),

            children: [
              // ----------------------------------------------------
              // SUBTITLE
              // ----------------------------------------------------

              Text(
                '${controller.subjects.length} subject${controller.subjects.length == 1 ? '' : 's'} • pick one to continue',
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.muted,
                ),
              ),

              const SizedBox(height: 16),

              // ----------------------------------------------------
              // SUBJECT CARDS
              // ----------------------------------------------------

              ...List.generate(
                controller.subjects.length,
                (index) {
                  final subject =
                      controller.subjects[index];

                  final data = subject.data();

                  final subjectName =
                      data['name'] as String? ?? '';

                  final hasSubtopics =
                      data['hasSubtopics'] == true;

                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 14,
                    ),

                    child: _SubjectCard(
                      index: index,
                      name: subjectName,

                      onTap: () {
                        controller.openSubject(
                          subject.id,
                          subjectName,
                          hasSubtopics,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}

// ==================================================================
// SUBJECT CARD
// ==================================================================

class _SubjectCard extends StatelessWidget {
  final int index;
  final String name;
  final VoidCallback onTap;

  const _SubjectCard({
    required this.index,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,

      borderRadius: BorderRadius.circular(18),

      child: InkWell(
        onTap: onTap,

        borderRadius: BorderRadius.circular(18),

        child: Container(
          padding: const EdgeInsets.all(16),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),

            border: Border.all(
              color: AppColors.surfaceBorder,
            ),
          ),

          child: Row(
            children: [
              // ----------------------------------------------------
              // NUMBER
              // ----------------------------------------------------

              Container(
                width: 44,
                height: 44,

                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: AppColors.primarySoft,

                  borderRadius:
                      BorderRadius.circular(13),
                ),

                child: Text(
                  (index + 1)
                      .toString()
                      .padLeft(2, '0'),

                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // ----------------------------------------------------
              // SUBJECT NAME
              // ----------------------------------------------------

              Expanded(
                child: Text(
                  name,

                  style: const TextStyle(
                    color: AppColors.ink,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // ----------------------------------------------------
              // ARROW
              // ----------------------------------------------------

              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.muted,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}