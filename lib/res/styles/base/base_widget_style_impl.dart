import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/res/dimens.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/styles/base/base_widget_style.dart';

final BaseStyles baseStyles = BaseStyles(
  textStyles: _baseTextStyle,
  btnStyles: _baseBtnStyle,
  toolBarStyles: _toolBarStyles,
  subToolBarStyles: _subToolBarStyles,
);

final BaseTextStyles _baseTextStyle = BaseTextStyles(
  settingBtnText: const TextStyle(color: ColorSet.white, fontSize: Dimens.dp15),
  mainBtnText: const TextStyle(color: ColorSet.black, fontSize: Dimens.dp16, fontWeight: FontWeight.w700),
  subBtnText: const TextStyle(color: ColorSet.greyAccent, fontSize: Dimens.dp15),
);

final BaseBtnStyles _baseBtnStyle = BaseBtnStyles(
  settingEdit: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color?>(ColorSet.btnBackground_1),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  settingRemove: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color?>(ColorSet.btnBackground_2),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  settingBtnAddDevice: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(ColorSet.btnBackground_3))
);

final ToolBarStyles _toolBarStyles = ToolBarStyles(
  titleStyle1: const TextStyle(color: ColorSet.black_1, fontSize: Dimens.dp22),
  backgroundColor: ColorSet.white,
);

final SubToolBarStyles _subToolBarStyles = SubToolBarStyles(
  titleStyle1: const TextStyle(color: ColorSet.black_1, fontSize: Dimens.dp20),
  backgroundColor: ColorSet.white,
);

class TextStyles {
  static const TextStyle textStyle1 = TextStyle(fontSize: Dimens.dp1);
  static const TextStyle textStyle2 = TextStyle(fontSize: Dimens.dp2);
  static const TextStyle textStyle3 = TextStyle(fontSize: Dimens.dp3);
  static const TextStyle textStyle4 = TextStyle(fontSize: Dimens.dp4);
  static const TextStyle textStyle5 = TextStyle(fontSize: Dimens.dp5);
}
