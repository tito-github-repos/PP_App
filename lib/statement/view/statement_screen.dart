import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/statement/controller/statement_controller.dart';


import '../../../../core/theme/app_colors.dart';


class StatementScreen
    extends GetView<StatementController> {
  const StatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // =========================================================================
      // App Bar
      // =========================================================================

      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
        centerTitle: false,

        title: Text(
          controller.topicName,
          style: const TextStyle(
            color: AppColors.ink,
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // =========================================================================
      // Body
      // =========================================================================

      body: Obx(() {
        // -----------------------------------------------------------------------
        // Loading
        // -----------------------------------------------------------------------

        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }

        // -----------------------------------------------------------------------
        // No questions
        // -----------------------------------------------------------------------

        if (controller.questions.isEmpty) {
          return const Center(
            child: Text(
              'No statements available.',
              style: TextStyle(
                color: AppColors.muted,
                fontSize: 16,
              ),
            ),
          );
        }

        // -----------------------------------------------------------------------
        // Current question
        // -----------------------------------------------------------------------

        final statements =
            controller.displayedStatements;

        final currentIndex =
            controller.currentQuestionIndex.value;

        final totalQuestions =
            controller.questions.length;

        final selectedIndex =
            controller.selectedStatementIndex.value;

        final hasSelection =
            selectedIndex >= 0;

        // -----------------------------------------------------------------------
        // Safety check
        // -----------------------------------------------------------------------

        if (statements.isEmpty) {
          return const Center(
            child: Text(
              'No statements available for this question.',
              style: TextStyle(
                color: AppColors.muted,
                fontSize: 16,
              ),
            ),
          );
        }

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                // ===============================================================
                // Question counter
                // ===============================================================

                Text(
                  'Statement ${currentIndex + 1} of $totalQuestions',
                  style: const TextStyle(
                    color: AppColors.muted,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),

                // ===============================================================
                // Progress bar
                // ===============================================================

                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10),

                  child: LinearProgressIndicator(
                    value:
                        (currentIndex + 1) /
                            totalQuestions,
                    minHeight: 6,
                    backgroundColor:
                        AppColors.backgroundTint,
                    valueColor:
                        const AlwaysStoppedAnimation<
                            Color>(
                      AppColors.primary,
                    ),
                  ),
                ),

                const SizedBox(height: 26),

                // ===============================================================
                // Question title
                // ===============================================================

                const Text(
                  'Choose the correct statement',
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 20),

                // ===============================================================
                // Statements
                // ===============================================================

                Expanded(
                  child: ListView.builder(
                    itemCount:
                        statements.length,

                    itemBuilder:
                        (context, index) {
                      final statement =
                          statements[index];

                      final text =
                          statement['text']
                                  ?.toString() ??
                              '';

                      final isSelected =
                          selectedIndex == index;

                      return Padding(
                        padding:
                            const EdgeInsets.only(
                          bottom: 14,
                        ),

                        child: _StatementCard(
                          index: index,
                          text: text,
                          isSelected:
                              isSelected,
                          onTap: () {
                            controller
                                .selectStatement(
                              index,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),

                // ===============================================================
                // Next / Finish button
                // ===============================================================

                SizedBox(
                  width: double.infinity,
                  height: 56,

                  child: ElevatedButton(
                    onPressed: hasSelection
                        ? controller.submitAnswer
                        : null,

                    style:
                        ElevatedButton.styleFrom(
                      backgroundColor:
                          AppColors.primary,

                      disabledBackgroundColor:
                          AppColors.primary
                              .withOpacity(0.35),

                      foregroundColor:
                          Colors.white,

                      elevation: 0,

                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                          14,
                        ),
                      ),
                    ),

                    child: Text(
                      currentIndex ==
                              totalQuestions - 1
                          ? 'Finish'
                          : 'Next',

                      style:
                          const TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

// =============================================================================
// Statement Card
// =============================================================================

class _StatementCard
    extends StatelessWidget {
  const _StatementCard({
    required this.index,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final letter =
        String.fromCharCode(65 + index);

    return Material(
      color: Colors.transparent,

      child: InkWell(
        onTap: onTap,

        borderRadius:
            BorderRadius.circular(16),

        child: AnimatedContainer(
          duration:
              const Duration(
            milliseconds: 200,
          ),

          width: double.infinity,

          padding:
              const EdgeInsets.all(18),

          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primarySoft
                : AppColors.surface,

            borderRadius:
                BorderRadius.circular(16),

            border: Border.all(
              color: isSelected
                  ? AppColors.primary
                  : AppColors.surfaceBorder,

              width: isSelected
                  ? 1.6
                  : 1.2,
            ),
          ),

          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              // -----------------------------------------------------------------
              // A / B circle
              // -----------------------------------------------------------------

              Container(
                width: 34,
                height: 34,

                alignment:
                    Alignment.center,

                decoration:
                    BoxDecoration(
                  shape:
                      BoxShape.circle,

                  color: isSelected
                      ? AppColors.primary
                      : AppColors.backgroundTint,
                ),

                child: Text(
                  letter,

                  style: TextStyle(
                    color: isSelected
                        ? Colors.white
                        : AppColors.ink,

                    fontSize: 14,

                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),

              const SizedBox(width: 14),

              // -----------------------------------------------------------------
              // Statement text
              // -----------------------------------------------------------------

              Expanded(
                child: Text(
                  text,

                  style:
                      const TextStyle(
                    color: AppColors.ink,

                    fontSize: 15.5,

                    height: 1.5,

                    fontWeight:
                        FontWeight.w500,
                  ),
                ),
              ),

              // -----------------------------------------------------------------
              // Selected icon
              // -----------------------------------------------------------------

              if (isSelected) ...[
                const SizedBox(width: 10),

                const Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.primary,
                  size: 22,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}