import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/styles/base/base_widget_style_impl.dart';
import 'package:flutter_ncku_test/tool_bar/controller/base_toolbar_controller.dart';
import 'package:flutter_ncku_test/tool_bar/vo/toolbar_config_vo.dart';
import 'package:get/get.dart';

class BaseToolbarView extends GetView<BaseToolbarController> implements PreferredSizeWidget {
  ToolbarConfigVo configVo;

  BaseToolbarView({
    Key? key,
    ToolbarConfigVo? configVo,
  })  : configVo = configVo ?? ToolbarConfigVo.defaultValue(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => AppBar(
          elevation: 5,
          leading: IconButton(
            icon: configVo.leftWidget ??
                const Icon(
                  Icons.list,
                  color: ColorSet.blueGrey,
                ),
            onPressed: configVo.leftCallBack?.call() ?? () => Scaffold.of(context).openDrawer(),
          ),
          title: configVo.middleWidget ??
              Text(
                controller.appBarTitle.value,
                style: baseStyles.toolBarStyles.titleStyle1,
              ),
          centerTitle: true,
          actions: configVo.rightWidget,
          backgroundColor: baseStyles.toolBarStyles.backgroundColor,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
