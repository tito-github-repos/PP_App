import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pp_app/attemptHistory/controller/attempt_history_controller.dart';
import 'package:pp_app/core/theme/app_colors.dart';
import 'package:pp_app/routes/app_routes.dart';
import 'package:pp_app/widgets/attempt_card.dart';

class AttemptHistoryScreen
    extends GetView<AttemptHistoryController> {
  const AttemptHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.ink,
        elevation: 0,
        title: Text(
          'Attempt History',
          style: const TextStyle(
            color: AppColors.ink,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          );
        }

        if (controller.attempts.isEmpty) {
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
                      color: AppColors.primarySoft,
                      borderRadius:
                          BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.history_rounded,
                      color: AppColors.primary,
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    'No attempts yet',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ink,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Complete this topic once to see your attempt history here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.5,
                      color: AppColors.muted,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh:
              controller.loadAttempts,
          child: ListView.builder(
            padding:
                const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              30,
            ),
            itemCount:
                controller.attempts.length,
            itemBuilder:
                (context, index) {
              final attempt =
                  controller.attempts[index];

              return AttemptCard(
                attempt: attempt.data(),
                onTap: () {
                  Get.toNamed(
                    AppRoutes.attemptReview,
                    arguments: {
                      'attempt':
                          attempt.data(),
                    },
                  );
                },
              );
            },
          ),
        );
      }),
    );
  }
}