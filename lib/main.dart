import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/app_pages/app_pages.dart';
import 'package:flutter_ncku_test/bottom_webview/controller/bottom_webview_controller.dart';
import 'package:flutter_ncku_test/res/theme/theme_data.dart';
import 'package:get/get.dart';

import 'res/strings/string_en.dart';
import 'res/strings/string_zh_tw.dart';
import 'tool_bar/controller/base_toolbar_controller.dart';
import 'top_list/controller/top_list_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BaseToolbarController(), fenix: true);
    Get.lazyPut(() => TopListController(), fenix: true);
    Get.lazyPut(() => BottomWebViewController(), fenix: true);

    return GetMaterialApp(
      initialRoute: AppPages.initPages,
      locale: window.locale,
      translations: TranslationService(),
      getPages: AppPages.pages,
    );
  }
}

class TranslationService extends Translations {
  static final TranslationService _singleton = TranslationService._internal();

  factory TranslationService() => _singleton;

  TranslationService._internal();

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': string_en,
        'zh_TW': string_zh_tw,
      };
}
