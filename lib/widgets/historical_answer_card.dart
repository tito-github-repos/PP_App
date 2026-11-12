import 'package:flutter/material.dart';
import 'package:pp_app/core/theme/app_colors.dart';
class HistoricalAnswerCard
    extends StatelessWidget {
  final Map<String, dynamic> answer;

  const HistoricalAnswerCard({
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
      width: double.infinity,
      margin:
          const EdgeInsets.only(bottom: 14),
      padding:
          const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius:
            BorderRadius.circular(18),
        border: Border.all(
          color: statusColor.withOpacity(0.22),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          // ========================================================
          // QUESTION + STATUS
          // ========================================================

          Row(
            children: [
              Expanded(
                child: Text(
                  'Question $questionNumber',
                  style: const TextStyle(
                    color: AppColors.ink,
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: statusColor
                      .withOpacity(0.10),
                  borderRadius:
                      BorderRadius.circular(20),
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
                      color: statusColor,
                    ),

                    const SizedBox(width: 5),

                    Text(
                      isCorrect
                          ? 'Correct'
                          : 'Wrong',
                      style: TextStyle(
                        color: statusColor,
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

          const SizedBox(height: 16),

          // ========================================================
          // YOUR ANSWER
          // ========================================================

          const Text(
            'Your answer',
            style: TextStyle(
              color: AppColors.muted,
              fontSize: 12,
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            selectedAnswer.isEmpty
                ? 'Not answered'
                : selectedAnswer,
            style: const TextStyle(
              color: AppColors.ink,
              fontSize: 14,
              height: 1.45,
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          // ========================================================
          // CORRECT ANSWER
          // ========================================================

          if (!isCorrect) ...[
            const SizedBox(height: 14),

            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green
                    .withOpacity(0.07),
                borderRadius:
                    BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Correct answer',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    correctAnswer,
                    style: const TextStyle(
                      color: Colors.green,
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
class HistoricalFilterBar
    extends StatelessWidget {
  final List<Map<String, dynamic>> answers;
  final int selectedFilter;
  final ValueChanged<int> onFilterChanged;

  const HistoricalFilterBar({
    required this.answers,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    final allCount = answers.length;

    final correctCount = answers
        .where(
          (answer) =>
              answer['isCorrect'] == true,
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
            child: HistoricalFilterButton(
              label: 'All $allCount',
              selected:
                  selectedFilter == 0,
              color:
                  AppColors.primary,
              onTap: () =>
                  onFilterChanged(0),
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: HistoricalFilterButton(
              label: '✓ $correctCount',
              selected:
                  selectedFilter == 1,
              color: Colors.green,
              onTap: () =>
                  onFilterChanged(1),
            ),
          ),

          const SizedBox(width: 8),

          Expanded(
            child: HistoricalFilterButton(
              label: '✕ $wrongCount',
              selected:
                  selectedFilter == 2,
              color: Colors.red,
              onTap: () =>
                  onFilterChanged(2),
            ),
          ),
        ],
      ),
    );
  }
}
class HistoricalFilterButton
    extends StatelessWidget {
  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  const HistoricalFilterButton({
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
            const Duration(milliseconds: 180),
        padding:
            const EdgeInsets.symmetric(
          vertical: 11,
        ),
        decoration: BoxDecoration(
          color: selected
              ? color.withOpacity(0.10)
              : Colors.transparent,
          borderRadius:
              BorderRadius.circular(12),
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