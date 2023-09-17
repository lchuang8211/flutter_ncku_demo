import 'package:flutter/material.dart';


class BaseStyles {
  BaseTextStyles textStyles;
  BaseBtnStyles btnStyles;

  ToolBarStyles toolBarStyles;
  SubToolBarStyles subToolBarStyles;

  BaseStyles({
    required this.textStyles,
    required this.btnStyles,
    required this.subToolBarStyles,
    required this.toolBarStyles,
  });
}

class ToolBarStyles {
  TextStyle titleStyle1;
  Color backgroundColor;

  ToolBarStyles({
    required this.titleStyle1,
    required this.backgroundColor,
  });
}

class SubToolBarStyles {
  TextStyle titleStyle1;
  Color backgroundColor;

  SubToolBarStyles({
    required this.titleStyle1,
    required this.backgroundColor,
  });
}

class BaseTextStyles {
  TextStyle settingBtnText;
  TextStyle mainBtnText;
  TextStyle subBtnText;

  BaseTextStyles({
    required this.settingBtnText,
    required this.mainBtnText,
    required this.subBtnText,
  });
}

class BaseBtnStyles {
  ButtonStyle settingEdit;
  ButtonStyle settingRemove;
  ButtonStyle settingBtnAddDevice;

  BaseBtnStyles({
    required this.settingEdit,
    required this.settingRemove,
    required this.settingBtnAddDevice,
  });
}
