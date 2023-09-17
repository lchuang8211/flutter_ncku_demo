import 'package:flutter/material.dart';

class ToolbarConfigVo {
  Widget? leftWidget;
  Function? leftCallBack;
  Function? rightCallBack;
  Function? middleCallBack;
  List<Widget>? rightWidget;
  Widget? middleWidget;
  String title;

  ToolbarConfigVo({
    this.leftWidget,
    this.leftCallBack,
    this.rightWidget,
    this.rightCallBack,
    this.middleWidget,
    this.middleCallBack,
    this.title = '',
  });

  factory ToolbarConfigVo.defaultValue() => ToolbarConfigVo(title: 'Default Title');
}
