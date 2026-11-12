import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   final FirebaseFirestore _firestore =
//       FirebaseFirestore.instance;

//   final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
//       subjects =
//       <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

//   final RxBool isLoading = false.obs;
// final RxInt currentStreak = 0.obs;
//   final RxBool silverBadge = false.obs;
//   final RxBool goldBadge = false.obs;

//   final RxBool streakLoading = false.obs;
//   @override
//   void onInit() {
//     super.onInit();
//     loadSubjects();
//         loadStreak();

//   }

//   Future<void> loadSubjects() async {
//     try {
//       isLoading.value = true;

//       final snapshot = await _firestore
//           .collection('subjects')
//           .orderBy('order')
//           .get();

//       subjects.assignAll(snapshot.docs);
//     } catch (e) {
//       Get.snackbar(
//         'Error',
//         'Unable to load subjects.',
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     } finally {
//       isLoading.value = false;
//     }
//   }


//  Future<void> loadStreak() async {
//     try {
//       streakLoading.value = true;

//       final user = FirebaseAuth.instance.currentUser;

//       if (user == null) {
//         return;
//       }

//       final snapshot = await _firestore
//           .collection('users')
//           .doc(user.uid)
//           .get();

//       if (!snapshot.exists) {
//         currentStreak.value = 0;
//         silverBadge.value = false;
//         goldBadge.value = false;
//         return;
//       }

//       final data = snapshot.data() ?? {};

//       currentStreak.value =
//           (data['streakCurrent'] as num?)?.toInt() ?? 0;

//       silverBadge.value =
//           data['silverBadge'] == true;

//       goldBadge.value =
//           data['goldBadge'] == true;
//     } catch (e) {
//       debugPrint(
//         '❌ Streak loading error: $e',
//       );
//     } finally {
//       streakLoading.value = false;
//     }
//   }

// }

import 'package:get/get.dart';

class HomeController extends GetxController {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final RxList<QueryDocumentSnapshot<Map<String, dynamic>>>
      subjects =
      <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;

  final RxBool isLoading = false.obs;

  final RxInt currentStreak = 0.obs;

  // silverBadge now means all 3 rewards are unlocked.
  final RxBool silverBadge = false.obs;

  // Kept temporarily for compatibility with existing code.
  final RxBool goldBadge = false.obs;

  final RxBool streakLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    loadSubjects();
    loadStreak();
  }

  // =========================================================
  // LOAD SUBJECTS
  // =========================================================

  Future<void> loadSubjects() async {
    try {
      isLoading.value = true;

      final snapshot = await _firestore
          .collection('subjects')
          .orderBy('order')
          .get();

      subjects.assignAll(snapshot.docs);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Unable to load subjects.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // =========================================================
  // INDIA DATE HELPERS
  // =========================================================

  DateTime _indiaNow() {
    return DateTime.now()
        .toUtc()
        .add(const Duration(hours: 5, minutes: 30));
  }

  String _dateKey(DateTime date) {
    final year = date.year.toString().padLeft(4, '0');
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');

    return '$year-$month-$day';
  }

  // =========================================================
  // LOAD STREAK
  // =========================================================

  Future<void> loadStreak() async {
    try {
      streakLoading.value = true;

      final user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        currentStreak.value = 0;
        silverBadge.value = false;
        goldBadge.value = false;
        return;
      }

      final snapshot = await _firestore
          .collection('users')
          .doc(user.uid)
          .get();

      if (!snapshot.exists) {
        currentStreak.value = 0;
        silverBadge.value = false;
        goldBadge.value = false;
        return;
      }

      final data = snapshot.data() ?? {};

      currentStreak.value =
          (data['streakCurrent'] as num?)?.toInt() ?? 0;

      final longestStreak =
          (data['streakLongest'] as num?)?.toInt() ?? 0;

      // Once unlocked, the reward eligibility remains true.
      silverBadge.value =
          data['streak7RewardEligible'] == true ||
          currentStreak.value >= 7 ||
          longestStreak >= 7;

      goldBadge.value = false;
    } catch (e) {
      debugPrint('Streak loading error: $e');
    } finally {
      streakLoading.value = false;
    }
  }

  // =========================================================
  // RECORD DAILY COMPLETED ATTEMPT
  // Call only after an exam/quiz attempt is successfully saved.
  // =========================================================
Future<void> recordDailyAttempt() async {
  try {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final userRef = _firestore
        .collection('users')
        .doc(user.uid);

    final nowIndia = _indiaNow();

    final today = DateTime(
      nowIndia.year,
      nowIndia.month,
      nowIndia.day,
    );

    final todayKey = _dateKey(today);

    final startDate = today.subtract(
      const Duration(days: 6),
    );

    final startKey = _dateKey(startDate);

    await _firestore.runTransaction((transaction) async {
      final snapshot = await transaction.get(userRef);
      final data = snapshot.data() ?? {};

      final previousLastAttempt =
          data['lastAttemptDate']?.toString();

      final previousDailyDate =
          data['dailyAttemptDate']?.toString();

      int totalActiveDays =
          (data['streakCurrent'] as num?)?.toInt() ?? 0;

      int dailyCount =
          (data['dailyAttemptCount'] as num?)?.toInt() ?? 0;

      final alreadyEligible =
          data['streak7RewardEligible'] == true;

      // =====================================
      // TOTAL ACTIVE DAYS
      // =====================================

      if (previousLastAttempt != todayKey) {
        totalActiveDays++;
      }

      // =====================================
      // DAILY QUIZ ATTEMPT COUNT
      // =====================================

      if (previousDailyDate == todayKey) {
        dailyCount++;
      } else {
        dailyCount = 1;
      }

      // =====================================
      // PRESERVE PREVIOUS 7-DAY HISTORY
      // =====================================

      final Set<String> activeDates = {};

      final previousDates =
          data['activeDatesLast7Days'];

      if (previousDates is List) {
        for (final item in previousDates) {
          if (item is! String) continue;

          final dateKey = item.trim();

          // Accept only valid ISO date keys.
          final parsedDate = DateTime.tryParse(dateKey);

          if (parsedDate == null ||
              parsedDate.year.toString().padLeft(4, '0') +
                  '-${parsedDate.month.toString().padLeft(2, '0')}' +
                  '-${parsedDate.day.toString().padLeft(2, '0')}' !=
                  dateKey) {
            continue;
          }

          // Keep only dates inside the rolling 7-day window.
          if (dateKey.compareTo(startKey) >= 0 &&
              dateKey.compareTo(todayKey) <= 0) {
            activeDates.add(dateKey);
          }
        }
      }

      // Add today's completed activity.
      activeDates.add(todayKey);

      final sortedDates = activeDates.toList()..sort();

      final activeDaysLast7Days = sortedDates.length;

      // =====================================
      // REWARD ELIGIBILITY
      // ANY 7 ACTIVE DAYS
      // =====================================

      final rewardEligible =
          alreadyEligible || totalActiveDays >= 7;

      final updates = <String, dynamic>{
        'streakCurrent': totalActiveDays,
        'lastAttemptDate': todayKey,
        'lastAttemptAt': FieldValue.serverTimestamp(),

        'dailyAttemptDate': todayKey,
        'dailyAttemptCount': dailyCount,

        'activeDatesLast7Days': sortedDates,
        'activeDaysLast7DaysCount': activeDaysLast7Days,

        'streak7RewardEligible': rewardEligible,
      };

      if (!alreadyEligible && rewardEligible) {
        updates['streak7UnlockedAt'] =
            FieldValue.serverTimestamp();
      }

      transaction.set(
        userRef,
        updates,
        SetOptions(merge: true),
      );

      debugPrint('Previous dates: $previousDates');
      debugPrint('Updated dates: $sortedDates');
      debugPrint('Active days in last 7: $activeDaysLast7Days');
      debugPrint('Total active days: $totalActiveDays');
    });

    await loadStreak();
  } catch (e) {
    debugPrint('Daily activity update error: $e');
  }
}

}