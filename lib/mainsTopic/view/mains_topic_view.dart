import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/mainsTopic/controller/main_topic_controller.dart';

import '../../core/theme/app_colors.dart';

class MainTopicsScreen
    extends GetView<MainTopicsController> {
  const MainTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // ==========================================================
      // APP BAR
      // ==========================================================

      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,

        title: Text(
          controller.subjectName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: AppColors.ink,
          ),
        ),
      ),

      // ==========================================================
      // BODY
      // ==========================================================

      body: Obx(() {
        // --------------------------------------------------------
        // LOADING
        // --------------------------------------------------------

        if (controller.isLoading.value &&
            controller.topics.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }

        // --------------------------------------------------------
        // EMPTY
        // --------------------------------------------------------

        if (controller.topics.isEmpty) {
          return Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(
                horizontal: 32,
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 72,
                    height: 72,

                    decoration: BoxDecoration(
                      color:
                          AppColors.primarySoft,
                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    child: const Icon(
                      Icons.menu_book_rounded,
                      color:
                          AppColors.primary,
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'No topics available',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w700,
                      color: AppColors.ink,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Pull to refresh, or check back shortly.',
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.muted,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        // --------------------------------------------------------
        // TOPIC LIST
        // --------------------------------------------------------

        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh:
              controller.loadTopics,

          child: ListView(
            physics:
                const AlwaysScrollableScrollPhysics(
              parent:
                  BouncingScrollPhysics(),
            ),

            padding:
                const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              20,
            ),

            children: [
              Text(
                '${controller.topics.length} topic${controller.topics.length == 1 ? '' : 's'} • pick one to continue',
                style: const TextStyle(
                  fontSize: 13,
                  color: AppColors.muted,
                ),
              ),

              const SizedBox(height: 16),

              ...List.generate(
                controller.topics.length,
                (index) {
                  final topic =
                      controller.topics[index];

                  final data =
                      topic.data();

                  final topicName =
                      data['name']
                              ?.toString() ??
                          '';


final hasSubtopics =
    data['hasSubtopics'] == true;
                  return Padding(
                    padding:
                        const EdgeInsets.only(
                      bottom: 14,
                    ),

                    child: _TopicCard(
                      index: index,
                      name: topicName,

                      onTap: () {
  controller.openTopic(
    topic.id,
    topicName,
    hasSubtopics,
  );
},
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}

// ==================================================================
// TOPIC CARD
// ==================================================================

class _TopicCard extends StatelessWidget {
  final int index;
  final String name;
  final VoidCallback onTap;

  const _TopicCard({
    required this.index,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius:
          BorderRadius.circular(18),

      child: InkWell(
        onTap: onTap,
        borderRadius:
            BorderRadius.circular(18),

        child: Container(
          padding:
              const EdgeInsets.all(16),

          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(18),

            border: Border.all(
              color:
                  AppColors.surfaceBorder,
            ),
          ),

          child: Row(
            children: [
              // --------------------------------------------------
              // NUMBER
              // --------------------------------------------------

              Container(
                width: 44,
                height: 44,

                alignment:
                    Alignment.center,

                decoration:
                    BoxDecoration(
                  color:
                      AppColors.primarySoft,
                  borderRadius:
                      BorderRadius.circular(13),
                ),

                child: Text(
                  (index + 1)
                      .toString()
                      .padLeft(2, '0'),

                  style:
                      const TextStyle(
                    color:
                        AppColors.primary,
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // --------------------------------------------------
              // TOPIC NAME
              // --------------------------------------------------

              Expanded(
                child: Text(
                  name,

                  style:
                      const TextStyle(
                    color:
                        AppColors.ink,
                    fontSize: 17,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ),

              // --------------------------------------------------
              // ARROW
              // --------------------------------------------------

              const Icon(
                Icons
                    .arrow_forward_ios_rounded,
                color:
                    AppColors.muted,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}