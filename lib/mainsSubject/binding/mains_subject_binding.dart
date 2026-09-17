import 'package:get/get.dart';
import 'package:pp_app/mainsSubject/controller/mains_subject_controller.dart';


class MainSubjectsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainSubjectsController>(
      () => MainSubjectsController(),
    );
  }
}