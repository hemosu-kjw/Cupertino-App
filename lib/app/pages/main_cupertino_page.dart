import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * NOTE <pubspec.yaml> 1번줄 name: <start_flutter>를 프로젝트 패키지이름으로 수정. 
 */

class MainCupertinoPage extends StatefulWidget {
  //const MainCupertinoPage({Key? key}) : super(key: key);
  @override
  _MainCupertinoPageState createState() => _MainCupertinoPageState();
}

class _MainCupertinoPageState extends State<MainCupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Style UI'),
      ),
      child: Center(),
    );
  }
}
