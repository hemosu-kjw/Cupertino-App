import 'package:get/get.dart';
import '../pages/main_cupertino_page.dart';
import 'package:start_flutter/app/pages/main_cupertino_v2_page.dart';
import 'package:start_flutter/app/pages/main_cupertino_navi_page.dart';
import 'package:start_flutter/app/pages/sub/first_page.dart';
import 'package:start_flutter/app/pages/sub/other_page.dart';

// import '../pages/second_page.dart';
// import '../widgets/custom_size_transition.dart';

class GetXRouter {
  static final routes = [
    GetPage(name: '/', page: () => MainCupertinoV2Page()),
    GetPage(name: '/other', page: () => OtherPage()),
    // GetPage(
    //   name: '/main_navi_fab',
    //   page: () => MainBottomNaviFabPage(),
    //   //customTransition: CustomSizeTransition(),
    //   transition: Transition.zoom,
    // ),
  ];
}
