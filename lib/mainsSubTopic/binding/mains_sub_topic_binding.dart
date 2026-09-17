import 'package:get/get.dart';
import 'package:pp_app/mainsSubTopic/controller/mains_sub_topic.controller.dart';


class MainSubtopicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainSubtopicsController>(
      () => MainSubtopicsController(),
    );
  }
}