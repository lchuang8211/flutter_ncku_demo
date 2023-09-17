import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/dimens.dart';
import 'package:flutter_ncku_test/res/gaps.dart';
import 'package:flutter_ncku_test/res/styles/base/base_widget_style_impl.dart';
import 'package:flutter_ncku_test/top_list/views/top_list_view.dart';
import 'package:get/get.dart';

class TopListItemView extends StatelessWidget {
  TopListItemVo vo;
  Function()? editClicked;
  Function()? removeClicked;
  Function()? connectClicked;
  Function()? imageClicked;

  TopListItemView({
    Key? key,
    required this.vo,
    this.editClicked,
    this.removeClicked,
    this.connectClicked,
    this.imageClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Dimens.dp10, horizontal: Dimens.dp7),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(Dimens.dp5),
            decoration: const BoxDecoration(
              color: ColorSet.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
            ),
            child: Row(
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: vo.image.isEmpty
                        ? Image.asset(
                            'assets/doraemon.webp',
                            width: 80,
                            height: 80,
                          )
                        : Image.file(
                            File(vo.image),
                            width: 80,
                            height: 80,
                          ),
                  ),
                  onTap: () {
                    imageClicked?.call();
                  },
                ),
                Gaps.hGap10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vo.name ?? 'Name', style: baseStyles.textStyles.mainBtnText),
                      Text(vo.serialNumber ?? 'Serial Number', style: baseStyles.textStyles.subBtnText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/doraemon.webp',
                            width: 30,
                            height: 30,
                          ),
                          Text(vo.deviceNumber ?? 'Device Number', style: baseStyles.textStyles.mainBtnText),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(Dimens.dp5),
            decoration: const BoxDecoration(
              color: ColorSet.btnBackground_3,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
            ),
            child: Row(
              children: [
                ElevatedButton(
                  style: baseStyles.btnStyles.settingEdit,
                  onPressed: () {
                    editClicked?.call();
                  },
                  child: Text(
                    'edit'.tr,
                    style: baseStyles.textStyles.settingBtnText,
                  ),
                ),
                Gaps.hGap10,
                ElevatedButton(
                  style: baseStyles.btnStyles.settingRemove,
                  onPressed: () {
                    removeClicked?.call();
                  },
                  child: Text(
                    'remove'.tr,
                    style: baseStyles.textStyles.settingBtnText,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    connectClicked?.call();
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.wifi, color: ColorSet.white),
                      Gaps.hGap5,
                      Text(
                        'sensor_connection'.tr,
                        style: baseStyles.textStyles.settingBtnText,
                      ),
                      Gaps.hGap5,
                      const Icon(Icons.arrow_forward_ios, color: ColorSet.white),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
