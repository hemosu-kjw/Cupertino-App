import 'package:get/get.dart';
import '../pages/main_tabbar_page.dart';
import '../pages/main_cupertino_page.dart';

// import '../pages/second_page.dart';
// import '../widgets/custom_size_transition.dart';

class GetXRouter {
  static final routes = [
    GetPage(name: '/', page: () => MainCupertinoPage()),
    GetPage(name: '/maintabbar', page: () => MainTabBarPage()),
    // GetPage(
    //   name: '/main_navi_fab',
    //   page: () => MainBottomNaviFabPage(),
    //   //customTransition: CustomSizeTransition(),
    //   transition: Transition.zoom,
    // ),
  ];
}
