import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_app/data/models/user_model.dart';
import 'package:pp_app/data/repos/auth_repo.dart';
import 'package:pp_app/routes/app_routes.dart';
import 'package:pp_app/services/google_auth_service.dart';

class AuthController extends GetxController {
  static AuthController get instance =>
      Get.find<AuthController>();

  final RxBool isLoading = false.obs;

  final TextEditingController nameController =
      TextEditingController();

  final GoogleAuthService _googleService =
      GoogleAuthService.instance;

  final AuthRepository _repository =
      AuthRepository.instance;

  User? get currentUser =>
      FirebaseAuth.instance.currentUser;

  // =========================================================
  // GOOGLE SIGN IN
  // =========================================================

  Future<void> signInWithGoogle() async {
    try {
      isLoading.value = true;

      final credential =
          await _googleService.signIn();

      if (credential == null ||
          credential.user == null) {
        return;
      }

      final user = credential.user!;

      final exists =
          await _repository.userExists(user.uid);

      if (exists) {
        Get.offAllNamed(AppRoutes.dashboard);
      } else {
        nameController.text =
            user.displayName ?? '';

        Get.offAllNamed(
          AppRoutes.register,
        );
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Sign In Failed',
        e.message ?? 'Unable to sign in.',
      );
    } catch (e) {
      Get.snackbar(
        'Something went wrong',
        'Please try again.',
      );
    } finally {
      isLoading.value = false;
    }
  }

  // =========================================================
  // CREATE USER
  // =========================================================

  Future<void> createUser() async {
    final name =
        nameController.text.trim();

    if (name.isEmpty) {
      Get.snackbar(
        'Name Required',
        'Please enter your name.',
      );
      return;
    }

    try {
      isLoading.value = true;

      final user = currentUser;

      if (user == null) {
        Get.offAllNamed(AppRoutes.login);
        return;
      }

      await _repository.saveUser(
        UserModel(
          uid: user.uid,
          name: name,
          email: user.email ?? '',
          createdAt: Timestamp.now(),
        ),
      );

      Get.offAllNamed(AppRoutes.dashboard);
    } catch (e) {
      Get.snackbar(
        'Registration Failed',
        'Unable to create your account.',
      );
    } finally {
      isLoading.value = false;
    }
  }

  // =========================================================
  // SIGN OUT
  // =========================================================

  Future<void> signOut() async {
    await _googleService.signOut();

    nameController.clear();

    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}