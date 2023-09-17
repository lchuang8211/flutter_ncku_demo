import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/base/controllers/base_controller.dart';
import 'package:flutter_ncku_test/top_list/views/top_list_view.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class TopListController extends BaseController {
  @override
  void onInit() {
    super.onInit();
    list.addAll([
      TopListItemVo(name: 'Apple', serialNumber: generateRandomString(8), deviceNumber: generateRandomString(8)),
      TopListItemVo(name: 'Banana', serialNumber: generateRandomString(8), deviceNumber: generateRandomString(8)),
      TopListItemVo(name: 'Cherry', serialNumber: generateRandomString(8), deviceNumber: generateRandomString(8)),
    ]);
  }

  ScrollController listController = ScrollController();

  var list = <TopListItemVo>[].obs;

  void addItem() {
    list.add(TopListItemVo(
      name: 'Name${list.value.length + 1}',
      serialNumber: generateRandomString(8),
      deviceNumber: generateRandomString(8),
    ));
    update();
    listController.animateTo(
      listController.position.maxScrollExtent + 999,
      duration: const Duration(milliseconds: 250),
      curve: Curves.ease,
    );
  }

  void editItem(int index) {
    print('editItem $index');
  }

  void removeItem(int index) {
    list.removeWhere((element) => element.serialNumber == list.value[index].serialNumber);
    update();
  }

  void connectClicked(int index) {
    print('connectClicked $index');
  }

  Future<void> imageClicked(int index, bool bool) async {
    var picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: bool ? ImageSource.camera : ImageSource.gallery);
    list.value[index].image = pickedFile?.path ?? '';
    list.refresh();
  }

  String generateRandomString(int length) {
    final _random = Random();
    const _availableChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    final randomString = List.generate(
      length,
      (index) => _availableChars[_random.nextInt(_availableChars.length)],
    ).join();

    return randomString;
  }
}
