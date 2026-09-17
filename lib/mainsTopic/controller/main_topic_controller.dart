import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pp_app/routes/app_routes.dart';


class MainTopicsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      topics =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  late final String practiceId;
  late final String practiceName;
  late final String subjectId;
  late final String subjectName;
  late final bool hasSubtopics;

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

    hasSubtopics =
        arguments['hasSubtopics'] == true;

    loadTopics();
  }

  // ============================================================
  // LOAD TOPICS
  // ============================================================

  Future<void> loadTopics() async {
    try {
      isLoading.value = true;

      if (practiceId.isEmpty ||
          subjectId.isEmpty) {
        Get.snackbar(
          'Error',
          'Subject information is missing.',
          snackPosition:
              SnackPosition.BOTTOM,
        );
        return;
      }

      final snapshot = await _firestore
          .collection('main_practice')
          .doc(practiceId)
          .collection('subjects')
          .doc(subjectId)
          .collection('topics')
          .where(
            'isActive',
            isEqualTo: true,
          )
          .orderBy('order')
          .get();

      topics.assignAll(snapshot.docs);
    } catch (e) {
      debugPrint(
        '❌ Main Topics Error: $e',
      );

      Get.snackbar(
        'Error',
        'Unable to load topics.',
        snackPosition:
            SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // ============================================================
  // OPEN TOPIC
  // ============================================================
void openTopic(
  String topicId,
  String topicName,
  bool hasSubtopics,
) {
  final arguments = {
    'practiceId': practiceId,
    'practiceName': practiceName,
    'subjectId': subjectId,
    'subjectName': subjectName,
    'topicId': topicId,
    'topicName': topicName,
  };

  if (hasSubtopics) {
    // Topics that contain subtopics
    Get.toNamed(
      AppRoutes.mainSubtopics,
      arguments: arguments,
    );
  } else {
    // Topics that directly contain questions
    Get.toNamed(
      AppRoutes.mainQuestions,
      arguments: arguments,
    );
  }
}
}