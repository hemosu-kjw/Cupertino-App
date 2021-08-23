import 'package:get/get.dart';
import 'package:start_flutter/app/bindings/main_binding.dart';
import 'package:start_flutter/app/bindings/other_binding.dart';
import 'package:start_flutter/app/pages/main_cupertino_v2_page.dart';
import 'package:start_flutter/app/pages/sub/other_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainCupertinoV2Page(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () => OtherPage(),
      binding: OtherBinding(),
    ),
    // GetPage(
    //   name: '/main_navi_fab',
    //   page: () => MainBottomNaviFabPage(),
    //   //customTransition: CustomSizeTransition(),
    //   transition: Transition.zoom,
    // ),
  ];
}
