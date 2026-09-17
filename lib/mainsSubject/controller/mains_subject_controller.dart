import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pp_app/routes/app_routes.dart';


class MainSubjectsController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      subjects =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  late final String practiceId;
  late final String practiceName;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments as Map<String, dynamic>;

    practiceId = arguments['practiceId']?.toString() ?? '';
    practiceName = arguments['practiceName']?.toString() ?? '';

    loadSubjects();
  }

  // ============================================================
  // LOAD SUBJECTS
  // ============================================================

  Future<void> loadSubjects() async {
    try {
      isLoading.value = true;

      if (practiceId.isEmpty) {
        Get.snackbar(
          'Error',
          'Practice information is missing.',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      final snapshot = await _firestore
          .collection('main_practice')
          .doc(practiceId)
          .collection('subjects')
          .where(
            'isActive',
            isEqualTo: true,
          )
          .orderBy('order')
          .get();

      subjects.assignAll(snapshot.docs);
    } catch (e) {
      debugPrint(
        '❌ Main Subjects Error: $e',
      );

      Get.snackbar(
        'Error',
        'Unable to load subjects.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // ============================================================
  // OPEN SUBJECT
  // ============================================================

  void openSubject(
    String subjectId,
    String subjectName,
    bool hasSubtopics,
  ) {
    Get.toNamed(
      AppRoutes.mainTopics,
      arguments: {
        'practiceId': practiceId,
        'practiceName': practiceName,
        'subjectId': subjectId,
        'subjectName': subjectName,
        'hasSubtopics': hasSubtopics,
      },
    );
  }

  // ============================================================
  // BACK
  // ============================================================

  void goBack() {
    Get.back();
  }
}