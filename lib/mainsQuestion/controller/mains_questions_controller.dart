import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MainQuestionsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      questions =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  late final String practiceId;
  late final String practiceName;
  late final String subjectId;
  late final String subjectName;
  late final String topicId;
  late final String topicName;

  String? subtopicId;
  String? subtopicName;

  bool get hasSubtopic =>
      subtopicId != null &&
      subtopicId!.isNotEmpty;

  @override
  void onInit() {
    super.onInit();

    final arguments =
        Get.arguments as Map<String, dynamic>? ?? {};

    practiceId =
        arguments['practiceId']?.toString() ?? '';

    practiceName =
        arguments['practiceName']?.toString() ?? '';

    subjectId =
        arguments['subjectId']?.toString() ?? '';

    subjectName =
        arguments['subjectName']?.toString() ?? '';

    topicId =
        arguments['topicId']?.toString() ?? '';

    topicName =
        arguments['topicName']?.toString() ?? '';

    final receivedSubtopicId =
        arguments['subtopicId']?.toString();

    final receivedSubtopicName =
        arguments['subtopicName']?.toString();

    if (receivedSubtopicId != null &&
        receivedSubtopicId.isNotEmpty) {
      subtopicId = receivedSubtopicId;
      subtopicName = receivedSubtopicName;
    }

    loadQuestions();
  }

  // ============================================================
  // LOAD QUESTIONS
  // ============================================================

  Future<void> loadQuestions() async {
    try {
      isLoading.value = true;

      if (practiceId.isEmpty ||
          subjectId.isEmpty ||
          topicId.isEmpty) {
        Get.snackbar(
          'Error',
          'Question information is missing.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      late QuerySnapshot<
          Map<String, dynamic>> snapshot;

      // --------------------------------------------------------
      // WITH SUBTOPIC
      // --------------------------------------------------------

      if (hasSubtopic) {
        snapshot = await _firestore
            .collection('main_practice')
            .doc(practiceId)
            .collection('subjects')
            .doc(subjectId)
            .collection('topics')
            .doc(topicId)
            .collection('subtopics')
            .doc(subtopicId!)
            .collection('questions')
            .where(
              'isActive',
              isEqualTo: true,
            )
            .orderBy('order')
            .get();
      }

      // --------------------------------------------------------
      // WITHOUT SUBTOPIC
      // --------------------------------------------------------

      else {
        snapshot = await _firestore
            .collection('main_practice')
            .doc(practiceId)
            .collection('subjects')
            .doc(subjectId)
            .collection('topics')
            .doc(topicId)
            .collection('questions')
            .where(
              'isActive',
              isEqualTo: true,
            )
            .orderBy('order')
            .get();
      }

      questions.assignAll(snapshot.docs);
    } catch (e) {
      debugPrint(
        '❌ Main Questions Error: $e',
      );

      Get.snackbar(
        'Error',
        'Unable to load questions.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}