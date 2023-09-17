import 'package:flutter_ncku_test/tool_bar/controller/base_toolbar_controller.dart';
import 'package:get/get.dart';

class BaseToolbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseToolbarController>(() => BaseToolbarController());
  }
}
