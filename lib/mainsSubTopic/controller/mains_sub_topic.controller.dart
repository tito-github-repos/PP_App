import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pp_app/routes/app_routes.dart';


class MainSubtopicsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      subtopics =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  late final String practiceId;
  late final String practiceName;
  late final String subjectId;
  late final String subjectName;
  late final String topicId;
  late final String topicName;

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

    loadSubtopics();
  }

  // ============================================================
  // LOAD SUBTOPICS
  // ============================================================

  Future<void> loadSubtopics() async {
    try {
      isLoading.value = true;

      if (practiceId.isEmpty ||
          subjectId.isEmpty ||
          topicId.isEmpty) {
        Get.snackbar(
          'Error',
          'Topic information is missing.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final snapshot = await _firestore
          .collection('main_practice')
          .doc(practiceId)
          .collection('subjects')
          .doc(subjectId)
          .collection('topics')
          .doc(topicId)
          .collection('subtopics')
          .where(
            'isActive',
            isEqualTo: true,
          )
          .orderBy('order')
          .get();

      subtopics.assignAll(snapshot.docs);
    } catch (e) {
      debugPrint(
        '❌ Main Subtopics Error: $e',
      );

      Get.snackbar(
        'Error',
        'Unable to load subtopics.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // ============================================================
  // OPEN SUBTOPIC
  // ============================================================

  void openSubtopic(
    String subtopicId,
    String subtopicName,
  ) {
    Get.toNamed(
      AppRoutes.mainQuestions,
      arguments: {
        'practiceId': practiceId,
        'practiceName': practiceName,
        'subjectId': subjectId,
        'subjectName': subjectName,
        'topicId': topicId,
        'topicName': topicName,
        'subtopicId': subtopicId,
        'subtopicName': subtopicName,
      },
    );
  }
}