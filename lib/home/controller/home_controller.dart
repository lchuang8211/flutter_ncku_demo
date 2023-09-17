import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/base/controllers/base_controller.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/tool_bar/vo/toolbar_config_vo.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  @override
  void onInit() {
    configVo.value.leftWidget = IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: ColorSet.blueGrey,
      ),
      onPressed: () {
        printInfo(info: 'back clicked');
      },
    );
    super.onInit();
  }

  var configVo = ToolbarConfigVo.defaultValue().obs;
}
