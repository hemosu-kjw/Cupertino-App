import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_flutter/app/routes/app_pages.dart';
import 'app/routes/not_found_route.dart';

void main() => runApp(MyApp());

// NOTE: cloud firebase & firestorage
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final appTitle = 'MyApp';

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: appTitle,
      theme: CupertinoThemeData(
          brightness: Brightness.light, //dark
          primaryColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.systemRed,
            darkColor: CupertinoColors.systemGreen,
          ),
          barBackgroundColor: CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white,
            darkColor: CupertinoColors.black,
          )
          // scaffoldBackgroundColor: Colors.orange,
          ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      unknownRoute: GetPage(
        name: '/notFound',
        page: () => NotFoundRoute(),
      ),
    );
  }
}
