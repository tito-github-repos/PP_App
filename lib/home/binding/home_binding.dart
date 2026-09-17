import 'package:get/get.dart';
import 'package:pp_app/home/controller/home_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}