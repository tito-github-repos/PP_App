import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/home/controller/home_controller.dart';
import 'package:pp_app/services/prelims_streak_service.dart';
import 'package:pp_app/statement/view/answer_review_screen.dart';



// class StatementController extends GetxController {
//   final FirebaseFirestore _firestore =
//       FirebaseFirestore.instance;

//   // ------------------------------------------------------------
//   // QUIZ DETAILS
//   // ------------------------------------------------------------

//   late final String subjectId;
//   late final String subjectName;

//   String? sectionId;
//   String? sectionName;

//   late final String topicId;
//   late final String topicName;

//   // ------------------------------------------------------------
//   // QUESTIONS
//   // ------------------------------------------------------------

//   final RxList<QueryDocumentSnapshot<Map<String, dynamic>>> questions =
//       <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

//   final RxBool isLoading = false.obs;

//   final RxInt currentQuestionIndex = 0.obs;

//   final RxInt selectedStatementIndex = (-1).obs;

//   final RxInt score = 0.obs;

//   final RxList<Map<String, dynamic>> displayedStatements =
//       <Map<String, dynamic>>[].obs;

//   // ------------------------------------------------------------
//   // ATTEMPT
//   // ------------------------------------------------------------

//   late final DateTime startedAt;

//   /// Example:
//   ///
//   /// Economics + no section + Macroeconomy
//   /// economics__macroeconomy
//   ///
//   /// History + Modern History + Freedom Movement
//   /// history_modern_history_freedom_movement
//   late final String quizKey;

//   // ------------------------------------------------------------
//   // INIT
//   // ------------------------------------------------------------
// final RxList<Map<String, dynamic>> answerResults =
//     <Map<String, dynamic>>[].obs;
//   @override
//   void onInit() {
//     super.onInit();

//     final args = Get.arguments as Map<String, dynamic>;

//     subjectId =
//         args['subjectId']?.toString() ?? '';

//     subjectName =
//         args['subjectName']?.toString() ?? '';

//     sectionId =
//         args['sectionId']?.toString();

//     sectionName =
//         args['sectionName']?.toString();

//     topicId =
//         args['topicId']?.toString() ?? '';

//     topicName =
//         args['topicName']?.toString() ?? '';

//     // Record when this quiz attempt started.
//     startedAt = DateTime.now();

//     // Create a unique key for this particular quiz.
//     quizKey = _buildQuizKey();

//     loadQuestions();
//   }

//   // ------------------------------------------------------------
//   // BUILD QUIZ KEY
//   // ------------------------------------------------------------

//   String _buildQuizKey() {
//     final parts = <String>[
//       subjectId,
//     ];

//     if (sectionId != null &&
//         sectionId!.isNotEmpty) {
//       parts.add(sectionId!);
//     }

//     parts.add(topicId);

//     return parts.join('_');
//   }

//   // ------------------------------------------------------------
//   // LOAD QUESTIONS
//   // ------------------------------------------------------------

//   Future<void> loadQuestions() async {
//     try {
//       isLoading.value = true;

//       Query<Map<String, dynamic>> query;

//       if (sectionId != null &&
//           sectionId!.isNotEmpty) {
//         // Section-based subject
//         //
//         // subjects/{subjectId}
//         //   /sections/{sectionId}
//         //   /topics/{topicId}
//         //   /questions

//         query = _firestore
//             .collection('subjects')
//             .doc(subjectId)
//             .collection('sections')
//             .doc(sectionId)
//             .collection('topics')
//             .doc(topicId)
//             .collection('questions')
//             .orderBy('order');
//       } else {
//         // Direct-topic subject
//         //
//         // subjects/{subjectId}
//         //   /topics/{topicId}
//         //   /questions

//         query = _firestore
//             .collection('subjects')
//             .doc(subjectId)
//             .collection('topics')
//             .doc(topicId)
//             .collection('questions')
//             .orderBy('order');
//       }

//       final snapshot = await query.get();

//       questions.assignAll(snapshot.docs);

//       if (questions.isNotEmpty) {
//         prepareCurrentStatements();
//       }
//     } catch (e) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         if (Get.context != null) {
//           Get.snackbar(
//             'Error',
//             'Unable to load statements.',
//             snackPosition: SnackPosition.BOTTOM,
//           );
//         }
//       });
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   // ------------------------------------------------------------
//   // PREPARE CURRENT QUESTION
//   // ------------------------------------------------------------

//   void prepareCurrentStatements() {
//     if (questions.isEmpty) {
//       displayedStatements.clear();
//       return;
//     }

//     final question =
//         questions[currentQuestionIndex.value].data();

//     final data = question['statements'];

//     if (data is! List) {
//       displayedStatements.clear();
//       return;
//     }

//     final statements = data
//         .map(
//           (item) => Map<String, dynamic>.from(
//             item as Map,
//           ),
//         )
//         .toList();

//     // Randomize the two statements.
//     statements.shuffle();

//     displayedStatements.assignAll(statements);
//   }

//   // ------------------------------------------------------------
//   // SELECT STATEMENT
//   // ------------------------------------------------------------

//   void selectStatement(int index) {
//     if (index < 0 ||
//         index >= displayedStatements.length) {
//       return;
//     }

//     selectedStatementIndex.value = index;
//   }

//   // ------------------------------------------------------------
//   // SUBMIT ANSWER
//   // ------------------------------------------------------------

//   // Future<void> submitAnswer() async {
//   //   final selectedIndex =
//   //       selectedStatementIndex.value;

//   //   // Nothing selected.
//   //   if (selectedIndex == -1) {
//   //     return;
//   //   }

//   //   // Safety check.
//   //   if (selectedIndex >=
//   //       displayedStatements.length) {
//   //     return;
//   //   }

//   //   final selectedStatement =
//   //       displayedStatements[selectedIndex];

//   //   final bool isCorrect =
//   //       selectedStatement['isCorrect'] == true;

//   //   // Increase score if correct.
//   //   if (isCorrect) {
//   //     score.value++;
//   //   }

//   //   // ----------------------------------------------------------
//   //   // MOVE TO NEXT QUESTION
//   //   // ----------------------------------------------------------

//   //   if (currentQuestionIndex.value <
//   //       questions.length - 1) {
//   //     currentQuestionIndex.value++;

//   //     selectedStatementIndex.value = -1;

//   //     prepareCurrentStatements();

//   //     return;
//   //   }

//   //   // ----------------------------------------------------------
//   //   // LAST QUESTION
//   //   // ----------------------------------------------------------

//   //   // Save the completed attempt.
//   //   await saveAttempt();

//   //   // Show final score.
//   //   showFinalScore();
//   // }

//   Future<void> submitAnswer() async {
//   if (selectedStatementIndex.value == -1) {
//     Get.snackbar(
//       'Select an Answer',
//       'Please select an answer before submitting.',
//       snackPosition: SnackPosition.BOTTOM,
//     );
//     return;
//   }

//   final selectedIndex = selectedStatementIndex.value;
//   final selectedStatement = displayedStatements[selectedIndex];

//   final bool isCorrect = selectedStatement['isCorrect'] == true;

//   // Find the actual correct answer
//   final correctStatement = displayedStatements.firstWhere(
//     (statement) => statement['isCorrect'] == true,
//   );

//   // Store answer for review
//   answerResults.add({
//     'questionNumber': currentQuestionIndex.value + 1,
//     'selectedAnswer':
//         selectedStatement['text']?.toString() ?? '',
//     'correctAnswer':
//         correctStatement['text']?.toString() ?? '',
//     'isCorrect': isCorrect,
//   });

//   // Update score
//   if (isCorrect) {
//     score.value++;
//   }

//   // Move to next question
//   if (currentQuestionIndex.value < questions.length - 1) {
//     currentQuestionIndex.value++;
//     selectedStatementIndex.value = -1;

//     prepareCurrentStatements();
//   } else {
//     // Quiz completed
//     await saveAttempt();
//     showFinalScore();
//   }
// }

//   // ------------------------------------------------------------
//   // GET NEXT ATTEMPT NUMBER
//   // ------------------------------------------------------------

//   Future<int> _getNextAttemptNumber() async {
//     final user =
//         FirebaseAuth.instance.currentUser;

//     if (user == null) {
//       return 1;
//     }

//     final snapshot = await _firestore
//         .collection('users')
//         .doc(user.uid)
//         .collection('attempts')
//         .where(
//           'quizKey',
//           isEqualTo: quizKey,
//         )
//         .get();

//     if (snapshot.docs.isEmpty) {
//       return 1;
//     }

//     int highestAttemptNumber = 0;

//     for (final doc in snapshot.docs) {
//       final data = doc.data();

//       final value =
//           data['attemptNumber'];

//       if (value is int &&
//           value > highestAttemptNumber) {
//         highestAttemptNumber = value;
//       }
//     }

//     return highestAttemptNumber + 1;
//   }

//   // ------------------------------------------------------------
//   // SAVE ATTEMPT
//   // ------------------------------------------------------------

//   Future<void> saveAttempt() async {
//     final user =
//         FirebaseAuth.instance.currentUser;

//     if (user == null) {
//       return;
//     }

//     try {
//       final total = questions.length;

//       final correct = score.value;

//       final wrong =
//           total - correct;

//       final percentage =
//           total == 0
//               ? 0
//               : (correct / total) * 100;

//       // Find the next attempt number for
//       // this particular subject/section/topic.
//       final attemptNumber =
//           await _getNextAttemptNumber();

//       await _firestore
//           .collection('users')
//           .doc(user.uid)
//           .collection('attempts')
//           .add({
//         // ------------------------------------------------------
//         // ATTEMPT IDENTIFICATION
//         // ------------------------------------------------------

//         'quizKey': quizKey,

//         'attemptNumber':
//             attemptNumber,

//         // ------------------------------------------------------
//         // SUBJECT
//         // ------------------------------------------------------

//         'subjectId':
//             subjectId,

//         'subjectName':
//             subjectName,

//         // ------------------------------------------------------
//         // SECTION
//         // ------------------------------------------------------

//         'sectionId':
//             sectionId,

//         'sectionName':
//             sectionName,

//         // ------------------------------------------------------
//         // TOPIC
//         // ------------------------------------------------------

//         'topicId':
//             topicId,

//         'topicName':
//             topicName,

//         // ------------------------------------------------------
//         // SCORE
//         // ------------------------------------------------------

//         'totalQuestions':
//             total,

//         'correctAnswers':
//             correct,

//         'wrongAnswers':
//             wrong,

//         'score':
//             correct,

//         'percentage':
//             percentage,

//         // ------------------------------------------------------
//         // TIME
//         // ------------------------------------------------------

//         'startedAt':
//             Timestamp.fromDate(
//               startedAt,
//             ),

//         'completedAt':
//             FieldValue.serverTimestamp(),
//       });
//     } catch (e) {
//       // Don't prevent the user from seeing
//       // the final score if saving fails.

//       debugPrint(
//         'Failed to save attempt: $e',
//       );
//     }
//   }

//   // ------------------------------------------------------------
//   // FINAL SCORE DIALOG
//   // ------------------------------------------------------------

//   // void showFinalScore() {
//   //   Get.dialog(
//   //     PopScope(
//   //       canPop: false,
//   //       child: AlertDialog(
//   //         backgroundColor:
//   //             AppColors.surface,
//   //         shape:
//   //             RoundedRectangleBorder(
//   //           borderRadius:
//   //               BorderRadius.circular(20),
//   //         ),
//   //         title: const Text(
//   //           'Completed',
//   //           textAlign: TextAlign.center,
//   //           style: TextStyle(
//   //             color: AppColors.ink,
//   //             fontSize: 22,
//   //             fontWeight: FontWeight.w800,
//   //           ),
//   //         ),
//   //         content: Column(
//   //           mainAxisSize:
//   //               MainAxisSize.min,
//   //           children: [
//   //             const Text(
//   //               'Your Final Score',
//   //               style: TextStyle(
//   //                 color: AppColors.muted,
//   //                 fontSize: 15,
//   //                 fontWeight: FontWeight.w500,
//   //               ),
//   //             ),

//   //             const SizedBox(
//   //               height: 12,
//   //             ),

//   //             Text(
//   //               '${score.value} / ${questions.length}',
//   //               style: const TextStyle(
//   //                 color: AppColors.primary,
//   //                 fontSize: 36,
//   //                 fontWeight: FontWeight.w900,
//   //               ),
//   //             ),

//   //             const SizedBox(
//   //               height: 8,
//   //             ),

//   //             Text(
//   //               _getScoreMessage(),
//   //               textAlign:
//   //                   TextAlign.center,
//   //               style: const TextStyle(
//   //                 color: AppColors.muted,
//   //                 fontSize: 14,
//   //               ),
//   //             ),
//   //           ],
//   //         ),
//   //         actionsPadding:
//   //             const EdgeInsets.fromLTRB(
//   //           20,
//   //           0,
//   //           20,
//   //           20,
//   //         ),
//   //         actions: [
//   //           SizedBox(
//   //             width: double.infinity,
//   //             height: 48,
//   //             child: ElevatedButton(
//   //               onPressed: () {
//   //                 Get.back();
//   //                 Get.back();
//   //               },
//   //               style:
//   //                   ElevatedButton.styleFrom(
//   //                 backgroundColor:
//   //                     AppColors.primary,
//   //                 foregroundColor:
//   //                     Colors.white,
//   //                 elevation: 0,
//   //                 shape:
//   //                     RoundedRectangleBorder(
//   //                   borderRadius:
//   //                       BorderRadius.circular(
//   //                     12,
//   //                   ),
//   //                 ),
//   //               ),
//   //               child: const Text(
//   //                 'Back to Topics',
//   //                 style: TextStyle(
//   //                   fontSize: 15,
//   //                   fontWeight:
//   //                       FontWeight.w700,
//   //                 ),
//   //               ),
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //     barrierDismissible: false,
//   //   );
//   // }

//   void showFinalScore() {
//   final total = questions.length;
//   final correct = score.value;
//   final wrong = total - correct;

//   Get.dialog(
//     Dialog(
//       backgroundColor: AppColors.surface,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(24),
//       ),
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           maxHeight: Get.height * 0.85,
//           maxWidth: 500,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               // Header
//               const Text(
//                 'Completed',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.textPrimary,
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Score
//               const Text(
//                 'Your Final Score',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: AppColors.textSecondary,
//                 ),
//               ),

//               const SizedBox(height: 6),

//               Text(
//                 '$correct / $total',
//                 style: const TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.primary,
//                 ),
//               ),

//               const SizedBox(height: 6),

//               Text(
//                 _getScoreMessage(),
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: AppColors.textSecondary,
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Summary
//               Row(
//                 children: [
//                   Expanded(
//                     child: _buildScoreSummary(
//                       'Correct',
//                       correct,
//                       Colors.green,
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: _buildScoreSummary(
//                       'Wrong',
//                       wrong,
//                       Colors.red,
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),

//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Answer Review',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.textPrimary,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Answer review
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: List.generate(
//                       answerResults.length,
//                       (index) {
//                         return _buildAnswerReview(
//                           answerResults[index],
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Back button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Get.back();
//                     Get.back();
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primary,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 14,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                   ),
//                   child: const Text(
//                     'Back to Topics',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     barrierDismissible: false,
//   );
// }
// Widget _buildScoreSummary(
//   String title,
//   int value,
//   Color color,
// ) {
//   return Container(
//     padding: const EdgeInsets.symmetric(
//       vertical: 12,
//       horizontal: 10,
//     ),
//     decoration: BoxDecoration(
//       color: color.withOpacity(0.08),
//       borderRadius: BorderRadius.circular(14),
//       border: Border.all(
//         color: color.withOpacity(0.2),
//       ),
//     ),
//     child: Column(
//       children: [
//         Text(
//           '$value',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: color,
//           ),
//         ),
//         const SizedBox(height: 3),
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 12,
//             color: color,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ],
//     ),
//   );
// }
// Widget _buildAnswerReview(
//   Map<String, dynamic> result,
// ) {
//   final bool isCorrect = result['isCorrect'] == true;

//   final String selectedAnswer =
//       result['selectedAnswer']?.toString() ?? '';

//   final String correctAnswer =
//       result['correctAnswer']?.toString() ?? '';

//   final int questionNumber =
//       (result['questionNumber'] as num?)?.toInt() ?? 0;

//   final Color statusColor =
//       isCorrect ? Colors.green : Colors.red;

//   return Container(
//     width: double.infinity,
//     margin: const EdgeInsets.only(bottom: 12),
//     padding: const EdgeInsets.all(14),
//     decoration: BoxDecoration(
//       color: AppColors.background,
//       borderRadius: BorderRadius.circular(16),
//       border: Border.all(
//         color: statusColor.withOpacity(0.25),
//       ),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Question number + status
//         Row(
//           children: [
//             Expanded(
//               child: Text(
//                 'Question $questionNumber',
//                 style: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.textPrimary,
//                 ),
//               ),
//             ),

//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 9,
//                 vertical: 5,
//               ),
//               decoration: BoxDecoration(
//                 color: statusColor.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(
//                     isCorrect
//                         ? Icons.check_circle_rounded
//                         : Icons.cancel_rounded,
//                     size: 15,
//                     color: statusColor,
//                   ),
//                   const SizedBox(width: 4),
//                   Text(
//                     isCorrect ? 'Correct' : 'Wrong',
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold,
//                       color: statusColor,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),

//         const SizedBox(height: 12),

//         // Your answer
//         const Text(
//           'Your answer:',
//           style: TextStyle(
//             fontSize: 12,
//             color: AppColors.textSecondary,
//           ),
//         ),

//         const SizedBox(height: 4),

//         Text(
//           selectedAnswer,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: AppColors.textPrimary,
//           ),
//         ),

//         const SizedBox(height: 10),

//         // Correct answer
//         const Text(
//           'Correct answer:',
//           style: TextStyle(
//             fontSize: 12,
//             color: AppColors.textSecondary,
//           ),
//         ),

//         const SizedBox(height: 4),

//         Text(
//           correctAnswer,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//             color: Colors.green,
//           ),
//         ),
//       ],
//     ),
//   );
// }
//   // ------------------------------------------------------------
//   // SCORE MESSAGE
//   // ------------------------------------------------------------

//   String _getScoreMessage() {
//     if (questions.isEmpty) {
//       return '';
//     }

//     final percentage =
//         (score.value /
//                 questions.length) *
//             100;

//     if (percentage == 100) {
//       return 'Excellent! Perfect score.';
//     }

//     if (percentage >= 80) {
//       return 'Great job!';
//     }

//     if (percentage >= 60) {
//       return 'Good effort!';
//     }

//     if (percentage >= 40) {
//       return 'Keep practicing!';
//     }

//     return 'Keep learning and try again!';
//   }
// }


class StatementController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  // ============================================================
  // QUIZ DETAILS
  // ============================================================

  late final String subjectId;
  late final String subjectName;

  String? sectionId;
  String? sectionName;

  late final String topicId;
  late final String topicName;
final RxBool isSubmitting = false.obs;
bool isQuizCompleted = false;
  // ============================================================
  // QUESTIONS
  // ============================================================

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      questions =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  final RxInt currentQuestionIndex = 0.obs;

  final RxInt selectedStatementIndex = (-1).obs;

  final RxInt score = 0.obs;

  final RxList<Map<String, dynamic>> displayedStatements =
      <Map<String, dynamic>>[].obs;

  // ============================================================
  // ANSWER REVIEW
  // ============================================================

  final RxList<Map<String, dynamic>> answerResults =
      <Map<String, dynamic>>[].obs;
final RxInt reviewFilter = 0.obs;
  // ============================================================
  // ATTEMPT
  // ============================================================

  late final DateTime startedAt;

  late final String quizKey;

  // ============================================================
  // INIT
  // ============================================================

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments as Map<String, dynamic>;

    subjectId =
        args['subjectId']?.toString() ?? '';

    subjectName =
        args['subjectName']?.toString() ?? '';

    sectionId =
        args['sectionId']?.toString();

    sectionName =
        args['sectionName']?.toString();

    topicId =
        args['topicId']?.toString() ?? '';

    topicName =
        args['topicName']?.toString() ?? '';

    startedAt = DateTime.now();

    quizKey = _buildQuizKey();

    loadQuestions();
  }

  // ============================================================
  // BUILD QUIZ KEY
  // ============================================================

  String _buildQuizKey() {
    final parts = <String>[
      subjectId,
    ];

    if (sectionId != null &&
        sectionId!.isNotEmpty) {
      parts.add(sectionId!);
    }

    parts.add(topicId);

    return parts.join('_');
  }

  // ============================================================
  // LOAD QUESTIONS
  // ============================================================

  Future<void> loadQuestions() async {
    try {
      isLoading.value = true;

      Query<Map<String, dynamic>> query;

      if (sectionId != null &&
          sectionId!.isNotEmpty) {
        // --------------------------------------------------------
        // Section-based subject
        //
        // subjects/{subjectId}
        //   /sections/{sectionId}
        //   /topics/{topicId}
        //   /questions
        // --------------------------------------------------------

        query = _firestore
            .collection('subjects')
            .doc(subjectId)
            .collection('sections')
            .doc(sectionId)
            .collection('topics')
            .doc(topicId)
            .collection('questions')
            .orderBy('order');
      } else {
        // --------------------------------------------------------
        // Direct-topic subject
        //
        // subjects/{subjectId}
        //   /topics/{topicId}
        //   /questions
        // --------------------------------------------------------

        query = _firestore
            .collection('subjects')
            .doc(subjectId)
            .collection('topics')
            .doc(topicId)
            .collection('questions')
            .orderBy('order');
      }

      final snapshot = await query.get();

      questions.assignAll(snapshot.docs);

      if (questions.isNotEmpty) {
        prepareCurrentStatements();
      }
    } catch (e) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (Get.context != null) {
          Get.snackbar(
            'Error',
            'Unable to load statements.',
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      });
    } finally {
      isLoading.value = false;
    }
  }

  // ============================================================
  // PREPARE CURRENT QUESTION
  // ============================================================

  void prepareCurrentStatements() {
    if (questions.isEmpty) {
      displayedStatements.clear();
      return;
    }

    final question =
        questions[currentQuestionIndex.value].data();

    final data = question['statements'];

    if (data is! List) {
      displayedStatements.clear();
      return;
    }

    final statements = data
        .map(
          (item) => Map<String, dynamic>.from(
            item as Map,
          ),
        )
        .toList();

    // Randomize the statements.
    statements.shuffle();

    displayedStatements.assignAll(statements);
  }

  // ============================================================
  // SELECT STATEMENT
  // ============================================================

  void selectStatement(int index) {
    if (index < 0 ||
        index >= displayedStatements.length) {
      return;
    }

    selectedStatementIndex.value = index;
  }

  // ============================================================
  // SUBMIT ANSWER
  // ============================================================

//   Future<void> submitAnswer() async {
//     final selectedIndex =
//         selectedStatementIndex.value;

//     // Nothing selected
//     if (selectedIndex == -1) {
//       Get.snackbar(
//         'Select an Answer',
//         'Please select an answer before submitting.',
//         snackPosition: SnackPosition.BOTTOM,
//       );

//       return;
//     }

//     // Safety check
//     if (selectedIndex < 0 ||
//         selectedIndex >= displayedStatements.length) {
//       return;
//     }

//     final selectedStatement =
//         displayedStatements[selectedIndex];

//     final bool isCorrect =
//         selectedStatement['isCorrect'] == true;

//     // ------------------------------------------------------------
//     // FIND CORRECT ANSWER
//     // ------------------------------------------------------------

//     final correctStatement =
//         displayedStatements.firstWhere(
//       (statement) =>
//           statement['isCorrect'] == true,
//       orElse: () => <String, dynamic>{},
//     );

//     // ------------------------------------------------------------
//     // SAVE ANSWER FOR REVIEW
//     // ------------------------------------------------------------

//     answerResults.add({
//       'questionNumber':
//           currentQuestionIndex.value + 1,

//       'selectedAnswer':
//           selectedStatement['text']?.toString() ?? '',

//       'correctAnswer':
//           correctStatement['text']?.toString() ?? '',

//       'isCorrect':
//           isCorrect,
//     });

//     // ------------------------------------------------------------
//     // UPDATE SCORE
//     // ------------------------------------------------------------

//     if (isCorrect) {
//       score.value++;
//     }

//     // ------------------------------------------------------------
//     // NEXT QUESTION
//     // ------------------------------------------------------------

//     if (currentQuestionIndex.value <
//         questions.length - 1) {
//       currentQuestionIndex.value++;

//       selectedStatementIndex.value = -1;

//       // This is your existing method.
//       prepareCurrentStatements();

//       return;
//     }

//     // ------------------------------------------------------------
//     // QUIZ COMPLETED
//     // ------------------------------------------------------------

//     await saveAttempt();


// try {
//   final result = await StreakService.recordPrelimsActivity();

//   final alreadyCounted = result['alreadyCounted'] == true;

//   if (!alreadyCounted && Get.isRegistered<HomeController>()) {
//     Get.find<HomeController>().loadStreak();
//   }
// } catch (e) {
//   debugPrint('Streak update failed: $e');
// }    showFinalScore();
//   }



Future<void> submitAnswer() async {

  // Prevent multiple clicks
  if (isSubmitting.value || isQuizCompleted) {
    return;
  }

  final selectedIndex =
      selectedStatementIndex.value;

  // Nothing selected
  if (selectedIndex == -1) {
    Get.snackbar(
      'Select an Answer',
      'Please select an answer before submitting.',
      snackPosition: SnackPosition.BOTTOM,
    );
    return;
  }

  // Safety check
  if (selectedIndex < 0 ||
      selectedIndex >= displayedStatements.length) {
    return;
  }

  // Lock submission immediately
  isSubmitting.value = true;

  final selectedStatement =
      displayedStatements[selectedIndex];

  final bool isCorrect =
      selectedStatement['isCorrect'] == true;

  // Find correct answer
  final correctStatement =
      displayedStatements.firstWhere(
    (statement) => statement['isCorrect'] == true,
    orElse: () => <String, dynamic>{},
  );

  // Save answer for review
  answerResults.add({
    'questionNumber':
        currentQuestionIndex.value + 1,
    'selectedAnswer':
        selectedStatement['text']?.toString() ?? '',
    'correctAnswer':
        correctStatement['text']?.toString() ?? '',
    'isCorrect': isCorrect,
  });

  // Update score
  if (isCorrect) {
    score.value++;
  }

  // Next question
  if (currentQuestionIndex.value <
      questions.length - 1) {

    currentQuestionIndex.value++;

    selectedStatementIndex.value = -1;

    prepareCurrentStatements();

    // Allow next submission
    isSubmitting.value = false;

    return;
  }

  // Quiz completed - permanently prevent resubmission
  isQuizCompleted = true;

  // Save attempt only once
  // await saveAttempt();

  // try {
  //   final result =
  //       await StreakService.recordPrelimsActivity();

  //   final alreadyCounted =
  //       result['alreadyCounted'] == true;

  //   if (!alreadyCounted &&
  //       Get.isRegistered<HomeController>()) {
  //     Get.find<HomeController>().loadStreak();
  //   }
  // } catch (e) {
  //   debugPrint('Streak update failed: $e');
  // }


final attemptSaved = await saveAttempt();

// Update daily activity and streak only if attempt was saved.
if (attemptSaved) {
  try {
    if (Get.isRegistered<HomeController>()) {
      final homeController = Get.find<HomeController>();

      await homeController.recordDailyAttempt();
    } else {
      debugPrint('HomeController is not registered.');
    }
  } catch (e) {
    debugPrint('Streak update failed: $e');
  }
}


  // Show final score only once
  showFinalScore();
}


  // ============================================================
  // GET NEXT ATTEMPT NUMBER
  // ============================================================

  Future<int> _getNextAttemptNumber() async {
    final user =
        FirebaseAuth.instance.currentUser;

    if (user == null) {
      return 1;
    }

    final snapshot = await _firestore
        .collection('users')
        .doc(user.uid)
        .collection('attempts')
        .where(
          'quizKey',
          isEqualTo: quizKey,
        )
        .get();

    if (snapshot.docs.isEmpty) {
      return 1;
    }

    int highestAttemptNumber = 0;

    for (final doc in snapshot.docs) {
      final data = doc.data();

      final value =
          data['attemptNumber'];

      if (value is int &&
          value > highestAttemptNumber) {
        highestAttemptNumber = value;
      }
    }

    return highestAttemptNumber + 1;
  }

  // ============================================================
  // SAVE ATTEMPT
  // ============================================================

  Future<bool> saveAttempt() async {
    final user =
        FirebaseAuth.instance.currentUser;

    if (user == null) {
      return false;
    }

    try {
      final total = questions.length;

      final correct = score.value;

      final wrong = total - correct;

      final percentage =
          total == 0
              ? 0
              : (correct / total) * 100;

      final attemptNumber =
          await _getNextAttemptNumber();

      await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('attempts')
          .add({
        // ------------------------------------------------------
        // ATTEMPT IDENTIFICATION
        // ------------------------------------------------------

        'quizKey': quizKey,

        'attemptNumber':
            attemptNumber,

        // ------------------------------------------------------
        // SUBJECT
        // ------------------------------------------------------

        'subjectId':
            subjectId,

        'subjectName':
            subjectName,

        // ------------------------------------------------------
        // SECTION
        // ------------------------------------------------------

        'sectionId':
            sectionId,

        'sectionName':
            sectionName,

        // ------------------------------------------------------
        // TOPIC
        // ------------------------------------------------------

        'topicId':
            topicId,

        'topicName':
            topicName,

        // ------------------------------------------------------
        // SCORE
        // ------------------------------------------------------

        'totalQuestions':
            total,

        'correctAnswers':
            correct,

        'wrongAnswers':
            wrong,

        'score':
            correct,

        'percentage':
            percentage,

        // ------------------------------------------------------
        // ANSWER REVIEW
        // ------------------------------------------------------

        'answerReview':
            answerResults.toList(),

        // ------------------------------------------------------
        // TIME
        // ------------------------------------------------------

        'startedAt':
            Timestamp.fromDate(
          startedAt,
        ),

        'completedAt':
            FieldValue.serverTimestamp(),

      });

        return true; // Indicate that the attempt was saved successfully
    } catch (e) {
      // Don't prevent user from seeing final score
      // if saving fails.

      debugPrint(
        'Failed to save attempt: $e',
      );
      return false; // Indicate that the attempt was not saved  
    }
  }

  // ============================================================
  // FINAL SCORE
  // ============================================================

  void showFinalScore() {
    final total = questions.length;

    final correct = score.value;

    final wrong = total - correct;

    Get.dialog(
      PopScope(
        canPop: false,
        child: Dialog(
          backgroundColor:
              AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(24),
          ),
          child: Padding(
            padding:
                const EdgeInsets.all(24),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                // ------------------------------------------------
                // COMPLETED
                // ------------------------------------------------

                const Text(
                  'Completed',
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    color:
                        AppColors.ink,
                    fontSize: 28,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // ------------------------------------------------
                // FINAL SCORE
                // ------------------------------------------------

                const Text(
                  'Your Final Score',
                  style: TextStyle(
                    color:
                        AppColors.muted,
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                Text(
                  '$correct / $total',
                  style: const TextStyle(
                    color:
                        AppColors.primary,
                    fontSize: 42,
                    fontWeight:
                        FontWeight.w900,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                Text(
                  _getScoreMessage(),
                  textAlign:
                      TextAlign.center,
                  style: const TextStyle(
                    color:
                        AppColors.muted,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                // ------------------------------------------------
                // CORRECT / WRONG
                // ------------------------------------------------

                Row(
                  children: [
                    Expanded(
                      child:
                          _buildScoreSummary(
                        'Correct',
                        correct,
                        Colors.green,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child:
                          _buildScoreSummary(
                        'Wrong',
                        wrong,
                        Colors.red,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 24,
                ),

                // ------------------------------------------------
                // REVIEW ANSWERS
                // ------------------------------------------------

                SizedBox(
                  width:
                      double.infinity,
                  height: 52,
                  child:
                      ElevatedButton.icon(
                    onPressed: () {
                      Get.back();

                      Get.to(
                        () =>
                            const AnswerReviewScreen(),
                      );
                    },
                    icon: const Icon(
                      Icons
                          .fact_check_rounded,
                    ),
                    label: const Text(
                      'Review Answers',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),
                    style:
                        ElevatedButton
                            .styleFrom(
                      backgroundColor:
                          AppColors.primary,
                      foregroundColor:
                          Colors.white,
                      elevation: 0,
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                          14,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 12,
                ),

                // ------------------------------------------------
                // BACK TO TOPICS
                // ------------------------------------------------

                SizedBox(
                  width:
                      double.infinity,
                  height: 52,
                  child:
                      OutlinedButton(
                    onPressed: () {
                      Get.back();
                      Get.back();
                    },
                    style:
                        OutlinedButton
                            .styleFrom(
                      foregroundColor:
                          AppColors.primary,
                      side:
                          const BorderSide(
                        color:
                            AppColors.primary,
                      ),
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                          14,
                        ),
                      ),
                    ),
                    child:
                        const Text(
                      'Back to Topics',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  // ============================================================
  // SCORE SUMMARY
  // ============================================================

  Widget _buildScoreSummary(
    String title,
    int value,
    Color color,
  ) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 10,
      ),
      decoration:
          BoxDecoration(
        color:
            color.withOpacity(0.08),
        borderRadius:
            BorderRadius.circular(16),
        border: Border.all(
          color:
              color.withOpacity(0.20),
        ),
      ),
      child: Column(
        children: [
          Text(
            '$value',
            style: TextStyle(
              fontSize: 22,
              fontWeight:
                  FontWeight.w800,
              color: color,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight:
                  FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // SCORE MESSAGE
  // ============================================================

  String _getScoreMessage() {
    if (questions.isEmpty) {
      return '';
    }

    final percentage =
        (score.value /
                questions.length) *
            100;

    if (percentage == 100) {
      return 'Excellent! Perfect score.';
    }

    if (percentage >= 80) {
      return 'Great job!';
    }

    if (percentage >= 60) {
      return 'Good effort!';
    }

    if (percentage >= 40) {
      return 'Keep practicing!';
    }

    return 'Keep learning and try again!';
  }
}