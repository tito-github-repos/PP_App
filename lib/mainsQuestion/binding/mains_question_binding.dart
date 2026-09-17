import 'package:get/get.dart';
import 'package:pp_app/mainsQuestion/controller/mains_questions_controller.dart';


class MainQuestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainQuestionsController>(
      () => MainQuestionsController(),
    );
  }
}