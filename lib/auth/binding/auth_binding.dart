import 'package:get/get.dart';
import 'package:pp_app/auth/controller/auth_controller.dart';


class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}