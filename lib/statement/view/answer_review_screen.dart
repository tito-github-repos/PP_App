import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/statement/controller/statement_controller.dart';

class AnswerReviewScreen
    extends GetView<StatementController> {
  const AnswerReviewScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(


      canPop: false,

  onPopInvokedWithResult: (didPop, result) {
    if (didPop) return;

    Get.back();
    Get.back();
  },

      
      child: Scaffold(
        backgroundColor:
            AppColors.background,
      
        // ==========================================================
        // APP BAR
        // ==========================================================
      
        appBar: AppBar(
          backgroundColor:
              AppColors.background,
          foregroundColor:
              AppColors.ink,
          elevation: 0,
          centerTitle: false,
      
          title: const Text(
            'Answer Review',
            style: TextStyle(
              color: AppColors.ink,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      
        // ==========================================================
        // BODY
        // ==========================================================
      
        body: Obx(() {
          final answers =
              controller.answerResults;
      
          final total =
              answers.length;
      
          final correct =
              answers
                  .where(
                    (answer) =>
                        answer['isCorrect'] ==
                        true,
                  )
                  .length;
      
          final wrong =
              total - correct;
      
          return Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              // ----------------------------------------------------
              // TOPIC INFO
              // ----------------------------------------------------
      
              Padding(
                padding:
                    const EdgeInsets.fromLTRB(
                  20,
                  4,
                  20,
                  0,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.topicName,
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis,
                      style:
                          const TextStyle(
                        color:
                            AppColors.ink,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.w800,
                      ),
                    ),
      
                    const SizedBox(
                      height: 6,
                    ),
      
                    Text(
                      '$total Questions • '
                      '$correct Correct • '
                      '$wrong Wrong',
                      style:
                          const TextStyle(
                        color:
                            AppColors.muted,
                        fontSize: 13,
                        fontWeight:
                            FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
      
              const SizedBox(
                height: 18,
              ),
      
              // ----------------------------------------------------
              // FILTER
              // ----------------------------------------------------
      
              _FilterBar(
                answers: answers,
              ),
      
              const SizedBox(
                height: 14,
              ),
      
              // ----------------------------------------------------
              // ANSWERS
              // ----------------------------------------------------
      
              Expanded(
                child: _ReviewList(
                  answers: answers,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

// =================================================================
// FILTER BAR
// =================================================================

class _FilterBar extends StatefulWidget {
  final List<Map<String, dynamic>> answers;

  const _FilterBar({
    required this.answers,
  });

  @override
  State<_FilterBar> createState() =>
      _FilterBarState();
}

class _FilterBarState
    extends State<_FilterBar> {
  int selectedFilter = 0;

  @override
  Widget build(BuildContext context) {
    final allCount =
        widget.answers.length;

    final correctCount =
        widget.answers
            .where(
              (answer) =>
                  answer['isCorrect'] ==
                  true,
            )
            .length;

    final wrongCount =
        allCount - correctCount;

    return Padding(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: _FilterButton(
              label:
                  'All $allCount',
              selected:
                  selectedFilter == 0,
              color:
                  AppColors.primary,
              onTap: () {
                setState(() {
                  selectedFilter = 0;
                });

                _updateFilter(0);
              },
            ),
          ),

          const SizedBox(
            width: 8,
          ),

          Expanded(
            child: _FilterButton(
              label:
                  '✓ $correctCount',
              selected:
                  selectedFilter == 1,
              color:
                  Colors.green,
              onTap: () {
                setState(() {
                  selectedFilter = 1;
                });

                _updateFilter(1);
              },
            ),
          ),

          const SizedBox(
            width: 8,
          ),

          Expanded(
            child: _FilterButton(
              label:
                  '✕ $wrongCount',
              selected:
                  selectedFilter == 2,
              color:
                  Colors.red,
              onTap: () {
                setState(() {
                  selectedFilter = 2;
                });

                _updateFilter(2);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _updateFilter(int filter) {
    final controller =
        Get.find<StatementController>();

    controller.reviewFilter.value =
        filter;
  }
}

// =================================================================
// FILTER BUTTON
// =================================================================

class _FilterButton
    extends StatelessWidget {
  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  const _FilterButton({
    required this.label,
    required this.selected,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration:
            const Duration(
          milliseconds: 180,
        ),
        padding:
            const EdgeInsets.symmetric(
          vertical: 11,
        ),
        decoration:
            BoxDecoration(
          color: selected
              ? color
                  .withOpacity(0.10)
              : Colors.transparent,
          borderRadius:
              BorderRadius.circular(
            12,
          ),
          border: Border.all(
            color: selected
                ? color
                : AppColors.textPrimary,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: selected
                  ? color
                  : AppColors.muted,
              fontSize: 13,
              fontWeight:
                  FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

// =================================================================
// REVIEW LIST
// =================================================================

class _ReviewList
    extends GetView<StatementController> {
  final List<Map<String, dynamic>> answers;

  const _ReviewList({
    required this.answers,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final filter =
          controller.reviewFilter.value;

      List<Map<String, dynamic>>
          filteredAnswers;

      if (filter == 1) {
        filteredAnswers =
            answers
                .where(
                  (answer) =>
                      answer['isCorrect'] ==
                      true,
                )
                .toList();
      } else if (filter == 2) {
        filteredAnswers =
            answers
                .where(
                  (answer) =>
                      answer['isCorrect'] !=
                      true,
                )
                .toList();
      } else {
        filteredAnswers =
            answers.toList();
      }

      if (filteredAnswers.isEmpty) {
        return Center(
          child: Column(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              Icon(
                filter == 2
                    ? Icons
                        .check_circle_outline_rounded
                    : Icons
                        .menu_book_rounded,
                size: 48,
                color:
                    AppColors.primary,
              ),

              const SizedBox(
                height: 12,
              ),

              Text(
                filter == 2
                    ? 'No wrong answers'
                    : 'No answers available',
                style:
                    const TextStyle(
                  color:
                      AppColors.ink,
                  fontSize: 16,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ],
          ),
        );
      }

      return ListView.builder(
        padding:
            const EdgeInsets.fromLTRB(
          20,
          0,
          20,
          30,
        ),
        itemCount:
            filteredAnswers.length,
        itemBuilder:
            (context, index) {
          return _AnswerCard(
            answer:
                filteredAnswers[index],
          );
        },
      );
    });
  }
}

// =================================================================
// ANSWER CARD
// =================================================================

class _AnswerCard
    extends StatelessWidget {
  final Map<String, dynamic> answer;

  const _AnswerCard({
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    final bool isCorrect =
        answer['isCorrect'] == true;

    final questionNumber =
        answer['questionNumber']
            ?.toString() ??
            '';

    final selectedAnswer =
        answer['selectedAnswer']
            ?.toString() ??
            '';

    final correctAnswer =
        answer['correctAnswer']
            ?.toString() ??
            '';

    final statusColor =
        isCorrect
            ? Colors.green
            : Colors.red;

    return Container(
      width:
          double.infinity,
      margin:
          const EdgeInsets.only(
        bottom: 14,
      ),
      padding:
          const EdgeInsets.all(16),
      decoration:
          BoxDecoration(
        color:
            AppColors.surface,
        borderRadius:
            BorderRadius.circular(
          18,
        ),
        border: Border.all(
          color:
              statusColor
                  .withOpacity(0.22),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          // ------------------------------------------------------
          // QUESTION + STATUS
          // ------------------------------------------------------

          Row(
            children: [
              Expanded(
                child: Text(
                  'Question $questionNumber',
                  style:
                      const TextStyle(
                    color:
                        AppColors.ink,
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),
              ),

              Container(
                padding:
                    const EdgeInsets
                        .symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration:
                    BoxDecoration(
                  color:
                      statusColor
                          .withOpacity(
                    0.10,
                  ),
                  borderRadius:
                      BorderRadius
                          .circular(
                    20,
                  ),
                ),
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min,
                  children: [
                    Icon(
                      isCorrect
                          ? Icons
                              .check_circle_rounded
                          : Icons
                              .cancel_rounded,
                      size: 16,
                      color:
                          statusColor,
                    ),

                    const SizedBox(
                      width: 5,
                    ),

                    Text(
                      isCorrect
                          ? 'Correct'
                          : 'Wrong',
                      style:
                          TextStyle(
                        color:
                            statusColor,
                        fontSize: 12,
                        fontWeight:
                            FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 16,
          ),

          // ------------------------------------------------------
          // YOUR ANSWER
          // ------------------------------------------------------

          const Text(
            'Your answer',
            style: TextStyle(
              color:
                  AppColors.muted,
              fontSize: 12,
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          Text(
            selectedAnswer,
            style:
                const TextStyle(
              color:
                  AppColors.ink,
              fontSize: 14,
              height: 1.45,
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          // ------------------------------------------------------
          // CORRECT ANSWER
          // ------------------------------------------------------

          if (!isCorrect) ...[
            const SizedBox(
              height: 14,
            ),

            Container(
              width:
                  double.infinity,
              padding:
                  const EdgeInsets.all(
                12,
              ),
              decoration:
                  BoxDecoration(
                color: Colors.green
                    .withOpacity(
                  0.07,
                ),
                borderRadius:
                    BorderRadius
                        .circular(
                  12,
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                children: [
                  const Text(
                    'Correct answer',
                    style:
                        TextStyle(
                      color:
                          Colors.green,
                      fontSize: 12,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Text(
                    correctAnswer,
                    style:
                        const TextStyle(
                      color:
                          Colors.green,
                      fontSize: 14,
                      height: 1.45,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}