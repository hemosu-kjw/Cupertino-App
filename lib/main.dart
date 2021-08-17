import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/routes.dart';

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
          brightness: Brightness.light,
          // primaryColor: Colors.orange,
          // barBackgroundColor: Colors.deepOrange,
          // scaffoldBackgroundColor: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: GetXRouter.routes);
  }
}
