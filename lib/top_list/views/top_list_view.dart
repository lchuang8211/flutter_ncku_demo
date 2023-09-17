import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ncku_test/res/gaps.dart';
import 'package:flutter_ncku_test/top_list/controller/top_list_controller.dart';
import 'package:flutter_ncku_test/res/styles/base/base_widget_style_impl.dart';
import 'package:get/get.dart';

import 'top_list_item_view.dart';

class TopListView extends GetView<TopListController> {
  const TopListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 40,
          child: ElevatedButton(
            style: baseStyles.btnStyles.settingBtnAddDevice,
            onPressed: () {
              controller.addItem();
            },
            child: Text(
              'add_device'.tr,
              style: baseStyles.textStyles.settingBtnText,
            ),
          ),
        ),
        Gaps.vGap10,
        SizedBox(
          height: 250,
          child: Obx(() => ListView.builder(
                controller: controller.listController,
                shrinkWrap: true,
                itemCount: controller.list.value.length,
                itemBuilder: (context, index) {
                  return TopListItemView(
                    vo: controller.list.value[index],
                    editClicked: () {
                      controller.editItem(index);
                    },
                    removeClicked: () {
                      controller.removeItem(index);
                    },
                    connectClicked: () {
                      controller.editItem(index);
                    },
                    imageClicked: () {
                      Get.dialog(
                        AlertDialog(
                          content: SizedBox(
                            height: 100,
                            width: 50,
                            child: Column(
                              children: [
                                InkWell(
                                  child: Text(
                                    'camera'.tr,
                                    style: baseStyles.textStyles.mainBtnText,
                                  ),
                                  onTap: () {
                                    Get.back();
                                    controller.imageClicked(index, true);
                                  },
                                ),
                                Gaps.vGap10,
                                InkWell(
                                  child: Text(
                                    'album'.tr,
                                    style: baseStyles.textStyles.mainBtnText,
                                  ),
                                  onTap: () {
                                    Get.back();
                                    controller.imageClicked(index, false);
                                  },
                                ),
                                Gaps.vGap10,
                                InkWell(
                                  child: Text(
                                    'cancel'.tr,
                                    style: baseStyles.textStyles.mainBtnText,
                                  ),
                                  onTap: () {
                                    Get.back();
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )),
        ),
      ],
    );
  }
}

class TopListItemVo {
  String? name;
  String? serialNumber;
  String? deviceNumber;
  String image;

  TopListItemVo({
    this.name,
    this.serialNumber,
    this.deviceNumber,
    this.image = '',
  });
}
