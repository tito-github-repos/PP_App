import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/mainsQuestion/controller/mains_questions_controller.dart';


class MainQuestionsScreen
    extends GetView<MainQuestionsController> {
  const MainQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // ==========================================================
      // APP BAR
      // ==========================================================

      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
        title: Text(
          controller.hasSubtopic
              ? controller.subtopicName ?? 'Questions'
              : controller.topicName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: AppColors.ink,
          ),
        ),
      ),

      // ==========================================================
      // BODY
      // ==========================================================

      body: Obx(() {
        // --------------------------------------------------------
        // LOADING
        // --------------------------------------------------------

        if (controller.isLoading.value &&
            controller.questions.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }

        // --------------------------------------------------------
        // EMPTY
        // --------------------------------------------------------

        if (controller.questions.isEmpty) {
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
                      Icons.quiz_outlined,
                      color: AppColors.primary,
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'No questions available',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ink,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Questions will appear here once they are added.',
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

        // --------------------------------------------------------
        // QUESTION LIST
        // --------------------------------------------------------

        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh: controller.loadQuestions,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            padding: const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              28,
            ),
            children: [
              // --------------------------------------------------
              // QUESTION COUNT
              // --------------------------------------------------

              Text(
                '${controller.questions.length} question${controller.questions.length == 1 ? '' : 's'}',
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.muted,
                ),
              ),

              const SizedBox(height: 16),

              // --------------------------------------------------
              // QUESTIONS
              // --------------------------------------------------

              ...List.generate(
                controller.questions.length,
                (index) {
                  final question =
                      controller.questions[index];

                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: _QuestionCard(
                      index: index,
                      data: question.data(),
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
// QUESTION CARD
// ==================================================================

class _QuestionCard extends StatelessWidget {
  final int index;
  final Map<String, dynamic> data;

  const _QuestionCard({
    required this.index,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final question =
        data['question']?.toString() ?? '';

    final year =
        data['year']?.toString() ?? '';

    final questionNumber =
        data['questionNumber']?.toString() ?? '';

    final marks =
        data['marks']?.toString() ?? '';

    final wordLimit =
        data['wordLimit']?.toString() ?? '';

    // ============================================================
    // BUILD META INFORMATION
    // ============================================================

    final List<String> meta = [];

    if (year.isNotEmpty) {
      meta.add(year);
    }

    if (questionNumber.isNotEmpty) {
      meta.add(questionNumber);
    }

    if (marks.isNotEmpty) {
      meta.add('$marks Marks');
    }

    if (wordLimit.isNotEmpty) {
      meta.add('$wordLimit Words');
    }

    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(20),

      child: Container(
        width: double.infinity,

        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius:
              BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.surfaceBorder,
          ),
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            // ====================================================
            // QUESTION NUMBER
            // ====================================================

            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        AppColors.primarySoft,
                    borderRadius:
                        BorderRadius.circular(13),
                  ),
                  child: Text(
                    (index + 1)
                        .toString()
                        .padLeft(2, '0'),
                    style: const TextStyle(
                      color:
                          AppColors.primary,
                      fontSize: 15,
                      fontWeight:
                          FontWeight.w800,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                const Text(
                  'Question',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight:
                        FontWeight.w700,
                    color: AppColors.muted,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            // ====================================================
            // QUESTION TEXT
            // ====================================================

            Text(
              question,
              style: const TextStyle(
                fontSize: 17,
                height: 1.55,
                fontWeight: FontWeight.w500,
                color: AppColors.ink,
              ),
            ),

            // ====================================================
            // META INFORMATION
            // ====================================================

            if (meta.isNotEmpty) ...[
  const SizedBox(height: 14),

  // RichText(
  //   text: TextSpan(
  //     children: [
  //       for (int i = 0; i < meta.length; i++) ...[
  //         TextSpan(
  //           text: meta[i],
  //           style: const TextStyle(
  //             fontSize: 13,
  //             fontWeight: FontWeight.w700,
  //             color: AppColors.primary,
  //           ),
  //         ),

  //         if (i < meta.length - 1)
  //           const TextSpan(
  //             text: '  •  ',
  //             style: TextStyle(
  //               fontSize: 13,
  //               fontWeight: FontWeight.w600,
  //               color: AppColors.muted,
  //             ),
  //           ),
  //       ],
  //     ],
  //   ),
  // ),

  RichText(
  text: TextSpan(
    children: [
      for (int i = 0; i < meta.length; i++) ...[
        TextSpan(
          text: meta[i],
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),

        const TextSpan(
          text: '  •  ',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.muted,
          ),
        ),
      ],

      // Answer
      const TextSpan(
        text: 'Answer',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w800,
          color: AppColors.primary,
        ),
      ),
    ],
  ),
),
],
          ],
        ),
      ),
    );
  }
}