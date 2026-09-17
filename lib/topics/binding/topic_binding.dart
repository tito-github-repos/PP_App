import 'package:get/get.dart';
import 'package:pp_app/topics/controller.dart/topic_controller.dart';


class TopicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopicsController>(
      () => TopicsController(),
    );
  }
}