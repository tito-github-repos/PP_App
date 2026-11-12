import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pp_app/core/theme/app_colors.dart';

class AttemptCard extends StatelessWidget {
  final Map<String, dynamic> attempt;
  final VoidCallback onTap;

  const AttemptCard({
    required this.attempt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final attemptNumber =
        attempt['attemptNumber'] ?? 0;

    final total =
        (attempt['totalQuestions'] as num?)
                ?.toInt() ??
            0;

    final correct =
        (attempt['correctAnswers'] as num?)
                ?.toInt() ??
            0;

    final wrong =
        (attempt['wrongAnswers'] as num?)
                ?.toInt() ??
            0;

    final percentage =
        (attempt['percentage'] as num?)
                ?.toDouble() ??
            0;

    final completedAt =
        attempt['completedAt'];

    final dateText =
        _formatAttemptDate(completedAt);

    final isGood =
        percentage >= 50;

    return Padding(
      padding:
          const EdgeInsets.only(bottom: 12),
      child: Material(
        color: AppColors.surface,
        borderRadius:
            BorderRadius.circular(18),
        child: InkWell(
          onTap: onTap,
          borderRadius:
              BorderRadius.circular(18),
          child: Container(
            padding:
                const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(18),
              border: Border.all(
                color:
                    AppColors.surfaceBorder,
              ),
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Attempt $attemptNumber',
                        style:
                            const TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w800,
                          color:
                              AppColors.ink,
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
                        color: isGood
                            ? Colors.green
                                .withOpacity(
                                0.10,
                              )
                            : Colors.red
                                .withOpacity(
                                0.10,
                              ),
                        borderRadius:
                            BorderRadius
                                .circular(
                          20,
                        ),
                      ),
                      child: Text(
                        '${percentage.toStringAsFixed(0)}%',
                        style: TextStyle(
                          color: isGood
                              ? Colors.green
                              : Colors.red,
                          fontSize: 13,
                          fontWeight:
                              FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  dateText,
                  style:
                      const TextStyle(
                    fontSize: 12,
                    color:
                        AppColors.muted,
                  ),
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    _StatItem(
                      icon:
                          Icons.quiz_rounded,
                      label:
                          '$total Questions',
                    ),

                    const SizedBox(
                      width: 14,
                    ),

                    _StatItem(
                      icon: Icons
                          .check_circle_rounded,
                      label:
                          '$correct Correct',
                    ),

                    const SizedBox(
                      width: 14,
                    ),

                    _StatItem(
                      icon: Icons
                          .cancel_rounded,
                      label:
                          '$wrong Wrong',
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end,
                  children: [
                    Text(
                      'View review',
                      style: TextStyle(
                        color:
                            AppColors.primary,
                        fontSize: 12.5,
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons
                          .arrow_forward_ios_rounded,
                      size: 13,
                      color:
                          AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _StatItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: AppColors.muted,
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              label,
              overflow:
                  TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11.5,
                color: AppColors.muted,
                fontWeight:
                    FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _formatAttemptDate(dynamic value) {
  if (value is! Timestamp) {
    return '';
  }

  final date = value.toDate();

  final day =
      date.day.toString().padLeft(2, '0');

  final month =
      date.month.toString().padLeft(2, '0');

  final year =
      date.year.toString();

  final hour =
      date.hour.toString().padLeft(2, '0');

  final minute =
      date.minute.toString().padLeft(2, '0');

  return '$day/$month/$year • $hour:$minute';
}