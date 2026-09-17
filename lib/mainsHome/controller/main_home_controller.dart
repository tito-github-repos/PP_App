import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import 'package:pp_app/routes/app_routes.dart';

import 'package:flutter/material.dart';


class MainHomeController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<
      QueryDocumentSnapshot<Map<String, dynamic>>>
      practices =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadPractices();
  }

  // ============================================================
  // LOAD MAIN PRACTICE
  // ============================================================

  Future<void> loadPractices() async {
    try {
      isLoading.value = true;

      final snapshot = await _firestore
          .collection('main_practice')
          .where(
            'isActive',
            isEqualTo: true,
          )
          .orderBy('order')
          .get();

      practices.assignAll(snapshot.docs);
    } catch (e) {
      debugPrint(
        '❌ Main Practice Error: $e',
      );

      Get.snackbar(
        'Error',
        'Unable to load main practice.',
        snackPosition:
            SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // ============================================================
  // OPEN PRACTICE
  // ============================================================

  void openPractice(
    String practiceId,
    String practiceName,
  ) {
    Get.toNamed(
      AppRoutes.mainSubjects,
      arguments: {
        'practiceId': practiceId,
        'practiceName': practiceName,
      },
    );
  }

  // ============================================================
  // GO TO MAIN DASHBOARD
  // ============================================================

  void goToDashboard() {
    Get.offAllNamed(
      AppRoutes.dashboard,
    );
  }

  // ============================================================
  // LOGOUT
  // ============================================================

  Future<void> logout() async {
    // Use your existing AuthController.
    await Get.find<AuthController>().signOut();
  }
}