import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/widgets/historical_answer_card.dart';
class AttemptReviewScreen extends StatefulWidget {
  const AttemptReviewScreen({
    super.key,
  });

  @override
  State<AttemptReviewScreen> createState() =>
      _AttemptReviewScreenState();
}

class _AttemptReviewScreenState
    extends State<AttemptReviewScreen> {
  int selectedFilter = 0;

  late final Map<String, dynamic> attempt;
  late final List<Map<String, dynamic>> answers;

  @override
  void initState() {
    super.initState();

    final args =
        Get.arguments as Map<String, dynamic>? ?? {};

    attempt = Map<String, dynamic>.from(
      args['attempt'] as Map,
    );

    final rawAnswers =
        attempt['answerReview']
                as List<dynamic>? ??
            [];

    answers = rawAnswers
        .map(
          (e) => Map<String, dynamic>.from(
            e as Map,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final topicName =
        attempt['topicName']?.toString() ??
            'Topic';

    final total =
        (attempt['totalQuestions'] as num?)
                ?.toInt() ??
            answers.length;

    final correct =
        (attempt['correctAnswers'] as num?)
                ?.toInt() ??
            answers
                .where(
                  (answer) =>
                      answer['isCorrect'] == true,
                )
                .length;

    final wrong =
        (attempt['wrongAnswers'] as num?)
                ?.toInt() ??
            total - correct;

    final percentage =
        (attempt['percentage'] as num?)
                ?.toDouble() ??
            (total > 0
                ? (correct / total) * 100
                : 0);

    // ------------------------------------------------------------
    // FILTER ANSWERS
    // ------------------------------------------------------------

    List<Map<String, dynamic>> filteredAnswers;

    if (selectedFilter == 1) {
      filteredAnswers = answers
          .where(
            (answer) =>
                answer['isCorrect'] == true,
          )
          .toList();
    } else if (selectedFilter == 2) {
      filteredAnswers = answers
          .where(
            (answer) =>
                answer['isCorrect'] != true,
          )
          .toList();
    } else {
      filteredAnswers = answers;
    }

    return Scaffold(
      backgroundColor: AppColors.background,

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

      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          // --------------------------------------------------------
          // TOPIC INFO
          // --------------------------------------------------------

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
                  topicName,
                  maxLines: 2,
                  overflow:
                      TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.ink,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  '$total Questions • '
                  '$correct Correct • '
                  '$wrong Wrong • '
                  '${percentage.toStringAsFixed(0)}%',
                  style: const TextStyle(
                    color: AppColors.muted,
                    fontSize: 13,
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          // --------------------------------------------------------
          // FILTER BAR
          // --------------------------------------------------------

          HistoricalFilterBar(
            answers: answers,
            selectedFilter:
                selectedFilter,
            onFilterChanged: (value) {
              setState(() {
                selectedFilter = value;
              });
            },
          ),

          const SizedBox(height: 14),

          // --------------------------------------------------------
          // ANSWERS
          // --------------------------------------------------------

          Expanded(
            child: filteredAnswers.isEmpty
                ? Center(
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min,
                      children: [
                        Icon(
                          selectedFilter == 2
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
                          selectedFilter == 2
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
                  )
                : ListView.builder(
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
                      return HistoricalAnswerCard(
                        answer:
                            filteredAnswers[index],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}