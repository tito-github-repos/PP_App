import 'package:get/get.dart';
import 'package:pp_app/sections/controller/section_controller.dart';


class SectionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SectionsController>(
      () => SectionsController(),
    );
  }
}