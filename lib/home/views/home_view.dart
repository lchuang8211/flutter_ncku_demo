import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/bottom_webview/views/bottom_webview_view.dart';
import 'package:flutter_ncku_test/home/controller/home_controller.dart';
import 'package:flutter_ncku_test/home/views/my_clock_view.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/dimens.dart';
import 'package:flutter_ncku_test/res/gaps.dart';
import 'package:flutter_ncku_test/tool_bar/controller/base_toolbar_controller.dart';
import 'package:flutter_ncku_test/tool_bar/views/base_toolbar_view.dart';
import 'package:flutter_ncku_test/top_list/views/top_list_view.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BaseToolbarController toolbarController = Get.find();
    toolbarController.appBarTitle.value = 'device_management'.tr;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorSet.mainBackground,
        appBar: BaseToolbarView(
          configVo: controller.configVo.value,
        ),
        body: Padding(
          padding: const EdgeInsets.all(Dimens.dp10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 300,
                  child: TopListView(),
                ),
                SizedBox(
                  height: 50,
                  child: Center(
                    child: MyClockView(),
                  ),
                ),
                Gaps.vGap10,
                BottomWebViewView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
