import 'package:get/get.dart';
import 'package:pp_app/mainsTopic/controller/main_topic_controller.dart';


class MainTopicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainTopicsController>(
      () => MainTopicsController(),
    );
  }
}