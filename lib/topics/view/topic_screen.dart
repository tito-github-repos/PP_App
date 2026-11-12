import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/routes/app_routes.dart';
import 'package:pp_app/topics/controller.dart/topic_controller.dart';

// Adjust this import to match your actual folder structure.
import '../../../../core/theme/app_colors.dart';

class TopicsScreen extends GetView<TopicsController> {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
        title: Text(
            controller.sectionName ?? controller.subjectName,

          style: const TextStyle(color: AppColors.ink, fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value && controller.topics.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          );
        }

        if (controller.topics.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(color: AppColors.primarySoft, borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.quiz_rounded, color: AppColors.primary, size: 32),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'No topics available',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.ink),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Pull to refresh, or check back shortly.',
                    style: TextStyle(fontSize: 13.5, color: AppColors.muted),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        // NOTE: assumes a `loadTopics` method exists on TopicsController,
        // mirroring `loadSubjects` / `loadSections` on the sibling
        // controllers. Remove the RefreshIndicator wrapper if it doesn't.
        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh: controller.loadTopics,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
            children: [
              Text(
                '${controller.topics.length} topic${controller.topics.length == 1 ? '' : 's'} • pick one to start practising',
                style: const TextStyle(fontSize: 13, color: AppColors.muted),
              ),
              const SizedBox(height: 16),
              ...controller.topics.map((topic) {
                final topicName = topic.data()['name']?.toString() ?? 'Topic';


// Build the same quizKey used by StatementController
final quizKeyParts = <String>[
  controller.subjectId,
];

if (controller.sectionId != null &&
    controller.sectionId!.isNotEmpty) {
  quizKeyParts.add(controller.sectionId!);
}

quizKeyParts.add(topic.id);

final quizKey = quizKeyParts.join('_');
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Get.toNamed(
                          AppRoutes.statement,
                          arguments: {
                            'subjectId': controller.subjectId,
                            'subjectName': controller.subjectName,
                            'sectionId': controller.sectionId,
                            'sectionName': controller.sectionName,
                            'topicId': topic.id,
                            'topicName': topicName,
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.surfaceBorder),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: AppColors.primarySoft, borderRadius: BorderRadius.circular(12)),
                              child: const Icon(Icons.quiz_rounded, color: AppColors.primary, size: 21),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                topicName,
                                style: const TextStyle(color: AppColors.ink, fontSize: 16.5, fontWeight: FontWeight.w600),
                              ),
                            ),
                            // const Icon(Icons.arrow_forward_ios_rounded, color: AppColors.muted, size: 16),

Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    IconButton(
      onPressed: () {
        Get.toNamed(
          AppRoutes.attemptHistory,
          arguments: {
            'quizKey': quizKey,
            'topicName': topicName,
          },
        );
      },
      tooltip: 'Attempt History',
      icon: const Icon(
        Icons.history_rounded,
        color: AppColors.primary,
        size: 23,
      ),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minWidth: 40,
        minHeight: 40,
      ),
    ),
    const Icon(
      Icons.arrow_forward_ios_rounded,
      color: AppColors.muted,
      size: 15,
    ),
  ],
),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      }),
    );
  }
}