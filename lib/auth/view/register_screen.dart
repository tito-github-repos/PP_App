import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';

import '../../../../core/theme/app_colors.dart';
class RegisterScreen extends GetView<AuthController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = controller.currentUser;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  // =========================================================
                  // BACK BUTTON
                  // =========================================================

                  IconButton(
                    onPressed: controller.signOut,
                    icon: const Icon(Icons.arrow_back_rounded, color: AppColors.ink),
                  ),

                  const SizedBox(height: 16),

                  // =========================================================
                  // WELCOME ICON — soft green chip, matches the reference's
                  // feature-card icon treatment
                  // =========================================================

                  Center(
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: AppColors.primarySoft,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Icon(Icons.waving_hand_rounded, size: 40, color: AppColors.primary),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Center(child: Text('Welcome! 👋', style: textTheme.displayLarge)),

                  const SizedBox(height: 10),

                  Center(
                    child: Text(
                      'Let’s create your profile\nand start learning.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, height: 1.5, color: AppColors.muted),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // =========================================================
                  // NAME
                  // =========================================================

                  Text('Your Name', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.ink)),

                  const SizedBox(height: 8),

                  TextField(
                    controller: controller.nameController,
                    textCapitalization: TextCapitalization.words,
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: AppColors.ink),
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                      prefixIcon: Icon(Icons.person_outline_rounded),
                    ),
                  ),

                  const SizedBox(height: 22),

                  // =========================================================
                  // EMAIL
                  // =========================================================

                  Text('Email', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.ink)),

                  const SizedBox(height: 8),

                  TextField(
                    readOnly: true,
                    controller: TextEditingController(text: user?.email ?? ''),
                    style: TextStyle(color: AppColors.muted),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      suffixIcon: Icon(Icons.lock_outline, size: 20, color: AppColors.muted),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // =========================================================
                  // CONTINUE
                  // =========================================================

                  Obx(
                    () => SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: controller.isLoading.value ? null : controller.createUser,
                        child: controller.isLoading.value
                            ? const SizedBox(
                                height: 22,
                                width: 22,
                                child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                              )
                            : const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Continue'),
                                  SizedBox(width: 8),
                                  Icon(Icons.arrow_forward_rounded, size: 20),
                                ],
                              ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  Center(
                    child: Text(
                      'Your information is securely stored.',
                      style: TextStyle(fontSize: 12, color: AppColors.muted),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}