import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pp_app/core/theme/app_colors.dart';

class AdminUsersListScreen extends StatelessWidget {
  final String title;
  final Query<Map<String, dynamic>> query;
  final String listType;

  const AdminUsersListScreen({
    super.key,
    required this.title,
    required this.query,
    required this.listType,
  });

  String _formatDate(dynamic value) {
    if (value is Timestamp) {
      final date = value.toDate().toLocal();

      return '${date.day.toString().padLeft(2, '0')}/'
          '${date.month.toString().padLeft(2, '0')}/'
          '${date.year}';
    }

    return value?.toString() ?? 'Not available';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
      ),
      body: StreamBuilder<
          QuerySnapshot<Map<String, dynamic>>>(
        stream: query.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('Unable to load users.'),
            );
          }

          final users = snapshot.data!.docs
              .where((doc) =>
                  doc.data()['role'] != 'admin')
              .toList();

          if (users.isEmpty) {
            return const Center(
              child: Text('No users found.'),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: users.length,
            separatorBuilder: (_, __) =>
                const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final user = users[index].data();

              final name =
                  user['name']?.toString() ?? 'Student';

              final email =
                  user['email']?.toString() ?? '';

              final registeredDate =
                  _formatDate(user['createdAt']);

              final lastAttempt =
                  user['lastAttemptDate']?.toString() ??
                      'Not available';

              final streak =
                  (user['streakCurrent'] as num?)
                          ?.toInt() ??
                      0;

              final unlockedAt =
                  _formatDate(user['streak7UnlockedAt']);

              String details;

              if (listType == 'daily') {
                details = 'Last attempt: $lastAttempt';
              } else if (listType == 'streak') {
                details =
                    'Reward eligible • Unlocked: $unlockedAt';
              } else {
                details =
                    'Registered: $registeredDate';
              }

              return Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.surfaceBorder,
                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.primarySoft,
                      child: Text(
                        name.isNotEmpty
                            ? name[0].toUpperCase()
                            : '?',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: AppColors.ink,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            email,
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.muted,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            details,
                            style: const TextStyle(
                              fontSize: 11,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (listType == 'streak') ...[
                            const SizedBox(height: 3),
                            Text(
                              'Current streak: $streak days',
                              style: const TextStyle(
                                fontSize: 11,
                                color: AppColors.muted,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}