import 'package:get/get.dart';
import 'package:pp_app/statement/controller/statement_controller.dart';


class StatementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatementController>(
      () => StatementController(),
    );
  }
}