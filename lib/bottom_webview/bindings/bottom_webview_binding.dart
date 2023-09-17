import 'package:flutter_ncku_test/bottom_webview/controller/bottom_webview_controller.dart';
import 'package:get/get.dart';

class OverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomWebViewController>(() => BottomWebViewController());
  }
}
