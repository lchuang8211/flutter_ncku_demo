import 'package:flutter_ncku_test/home/views/home_view.dart';
import 'package:flutter_ncku_test/top_list/bindings/top_list_binding.dart';
import 'package:flutter_ncku_test/top_list/views/top_list_view.dart';
import 'package:get/get.dart';

import '../home/bindings/home_binding.dart';

class PageRoutes {
  static String main = '/main';
  static String home = '/home';
}

class AppPages {
  static String initPages = PageRoutes.home;

  static List<GetPage> pages = [
    GetPage(
      name: PageRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
