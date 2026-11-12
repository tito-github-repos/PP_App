import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StreakService {
  StreakService._();

  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  static final FirebaseAuth _auth =
      FirebaseAuth.instance;

  // ============================================================
  // RECORD PRELIMS ACTIVITY
  // ============================================================

  static Future<Map<String, dynamic>> recordPrelimsActivity() async {
    final user = _auth.currentUser;

    if (user == null) {
      return {};
    }

    final userRef =
        _firestore.collection('users').doc(user.uid);

    final userSnapshot = await userRef.get();

    final data =
        userSnapshot.data() ?? <String, dynamic>{};

    final currentStreak =
        (data['streakCurrent'] as num?)?.toInt() ?? 0;

    final longestStreak =
        (data['streakLongest'] as num?)?.toInt() ?? 0;

    final lastActiveDate =
        data['lastActiveDate']?.toString();

    // ==========================================================
    // TODAY
    // ==========================================================

    final now = DateTime.now();

    final today = _dateOnly(now);

    // ==========================================================
    // ALREADY COMPLETED TODAY
    // ==========================================================

    if (lastActiveDate == _formatDate(today)) {
      return {
        'streak': currentStreak,
        'alreadyCounted': true,
        'silverUnlocked':
            data['silverBadge'] == true,
        'goldUnlocked':
            data['goldBadge'] == true,
      };
    }

    // ==========================================================
    // CALCULATE STREAK
    // ==========================================================

    int newStreak;

    if (lastActiveDate == null ||
        lastActiveDate.isEmpty) {
      newStreak = 1;
    } else {
      final lastDate =
          DateTime.tryParse(lastActiveDate);

      if (lastDate == null) {
        newStreak = 1;
      } else {
        final lastDateOnly =
            _dateOnly(lastDate);

        final difference =
            today.difference(lastDateOnly).inDays;

        if (difference == 1) {
          newStreak = currentStreak + 1;
        } else {
          newStreak = 1;
        }
      }
    }

    final newLongest =
        newStreak > longestStreak
            ? newStreak
            : longestStreak;

    // ==========================================================
    // BADGES
    // ==========================================================

    final existingSilver =
        data['silverBadge'] == true;

    final existingGold =
        data['goldBadge'] == true;

    final silverUnlocked =
        existingSilver || newStreak >= 30;

    final goldUnlocked =
        existingGold || newStreak >= 60;

    // ==========================================================
    // GOLD REWARD
    // ==========================================================

    final mockPracticeFree =
        data['prelimsMockPracticeFree'] == true ||
        newStreak >= 60;

    // ==========================================================
    // SAVE
    // ==========================================================

    await userRef.set(
      {
        'streakCurrent': newStreak,
        'streakLongest': newLongest,
        'lastActiveDate':
            _formatDate(today),

        'silverBadge': silverUnlocked,

        'silverRewardClaimed':
            data['silverRewardClaimed'] ?? false,

        'goldBadge': goldUnlocked,

        'goldRewardClaimed':
            data['goldRewardClaimed'] ?? false,

        'prelimsMockPracticeFree':
            mockPracticeFree,

        'updatedAt':
            FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );

    return {
      'streak': newStreak,
      'alreadyCounted': false,
      'silverUnlocked': silverUnlocked,
      'goldUnlocked': goldUnlocked,
      'newSilver':
          !existingSilver && newStreak >= 30,
      'newGold':
          !existingGold && newStreak >= 60,
    };
  }

  // ============================================================
  // DATE ONLY
  // ============================================================

  static DateTime _dateOnly(DateTime date) {
    return DateTime(
      date.year,
      date.month,
      date.day,
    );
  }

  // ============================================================
  // FORMAT DATE
  // ============================================================

  static String _formatDate(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }
}