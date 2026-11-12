import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class AttemptHistoryController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxBool isLoading = false.obs;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      attempts =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  late final String quizKey;
  late final String topicName;

  @override
  void onInit() {
    super.onInit();

    final args =
        Get.arguments as Map<String, dynamic>? ?? {};

    quizKey =
        args['quizKey']?.toString() ?? '';

    topicName =
        args['topicName']?.toString() ?? '';

    debugPrint('================================');
    debugPrint('ATTEMPT HISTORY');
    debugPrint('quizKey: $quizKey');
    debugPrint('topicName: $topicName');
    debugPrint('================================');

    loadAttempts();
  }

  Future<void> loadAttempts() async {
    try {
      isLoading.value = true;

      final user =
          FirebaseAuth.instance.currentUser;

      if (user == null) {
        attempts.clear();
        return;
      }

      if (quizKey.isEmpty) {
        debugPrint(
          '❌ Attempt History: quizKey is empty',
        );

        attempts.clear();
        return;
      }

      debugPrint(
        'Loading attempts for quizKey: $quizKey',
      );

      final snapshot = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('attempts')
          .where(
            'quizKey',
            isEqualTo: quizKey,
          )
          .get();

      debugPrint(
        '✅ Attempts found: ${snapshot.docs.length}',
      );

      for (final doc in snapshot.docs) {
        debugPrint(
          'Attempt: ${doc.id}',
        );

        debugPrint(
          'Saved quizKey: '
          '${doc.data()['quizKey']}',
        );
      }

      final docs = snapshot.docs.toList();

      // Newest first
      docs.sort((a, b) {
        final aTime =
            a.data()['completedAt'];

        final bTime =
            b.data()['completedAt'];

        if (aTime is Timestamp &&
            bTime is Timestamp) {
          return bTime.compareTo(aTime);
        }

        return 0;
      });

      attempts.assignAll(docs);
    } catch (e, stackTrace) {
      debugPrint(
        '❌ Load attempt history error: $e',
      );

      debugPrint(
        stackTrace.toString(),
      );

      attempts.clear();

      Get.snackbar(
        'Error',
        'Unable to load attempt history.',
        snackPosition:
            SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}