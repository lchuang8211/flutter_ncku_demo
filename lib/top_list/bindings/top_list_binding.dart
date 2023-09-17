import 'package:flutter_ncku_test/top_list/controller/top_list_controller.dart';
import 'package:get/get.dart';

class TopListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopListController>(() => TopListController());
  }
}
