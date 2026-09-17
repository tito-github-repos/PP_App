import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';
import '../../../../core/theme/app_colors.dart';
class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.height < 700;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Column(
                children: [
                  SizedBox(height: isSmallScreen ? 16 : 32),

                  // =========================================================
                  // LOGO
                  // =========================================================

                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 30),
                  ),

                  const SizedBox(height: 18),

                  // =========================================================
                  // WORDMARK — two-tone, echoes the PrelimsPass mark
                  // =========================================================

                  RichText(
                    text: TextSpan(
                      style: textTheme.displayLarge,
                      children: [
                        TextSpan(text: 'P', style: TextStyle(color: AppColors.ink)),
                        TextSpan(text: 'P', style: TextStyle(color: AppColors.primary)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // =========================================================
                  // EYEBROW BADGE
                  // =========================================================

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    decoration: BoxDecoration(
                      color: AppColors.primarySoft,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Learn • Practice • Improve',
                          style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Learn every day and test\nwhat you know.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.5, height: 1.45, color: AppColors.muted),
                  ),

                  SizedBox(height: isSmallScreen ? 28 : 42),

                  // =========================================================
                  // LOGIN CARD
                  // =========================================================

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(22, 24, 22, 22),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.surfaceBorder),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(.04), blurRadius: 24, offset: const Offset(0, 8)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back! 👋', style: textTheme.headlineMedium),

                        const SizedBox(height: 7),

                        Text('Sign in to continue your learning journey.', style: textTheme.bodyMedium),

                        const SizedBox(height: 22),

                        // ===================================================
                        // DIVIDER
                        // ===================================================

                        Row(
                          children: [
                            const Expanded(child: Divider()),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text('or continue with', style: TextStyle(fontSize: 12, color: AppColors.muted)),
                            ),
                            const Expanded(child: Divider()),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // ===================================================
                        // GOOGLE BUTTON
                        // ===================================================

                        Obx(
                          () => SizedBox(
                            width: double.infinity,
                            height: 54,
                            child: OutlinedButton(
                              onPressed: controller.isLoading.value ? null : controller.signInWithGoogle,
                              child: controller.isLoading.value
                                  ? const SizedBox(
                                      width: 22,
                                      height: 22,
                                      child: CircularProgressIndicator(strokeWidth: 2.5),
                                    )
                                  : Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                    'assets/images/google.png',
                    height: 22,
                    width: 22,
                  ),
                                        const SizedBox(width: 10),
                                        const Text('Continue with Google'),
                                      ],
                                    ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ===================================================
                        // SECURITY
                        // ===================================================

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_outline_rounded, size: 14, color: AppColors.muted),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                'Secure sign-in with Google',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 11.5, color: AppColors.muted),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: isSmallScreen ? 20 : 26),

                  Text(
                    'By continuing, you agree to our',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.5, color: AppColors.muted),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    'Terms of Service  •  Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w600, color: AppColors.ink),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}