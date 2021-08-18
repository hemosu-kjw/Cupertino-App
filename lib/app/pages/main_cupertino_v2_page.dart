import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * NOTE <pubspec.yaml> 1번줄 name: <start_flutter>를 프로젝트 패키지이름으로 수정. 
 */

class MainCupertinoV2Page extends StatefulWidget {
  //const MainCupertinoV2Page({Key? key}) : super(key: key);
  @override
  _MainCupertinoV2PageState createState() => _MainCupertinoV2PageState();
}

class _MainCupertinoV2PageState extends State<MainCupertinoV2Page> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CupertinoSliverNavigationBar(
              largeTitle: Text('Explore'),
              padding: EdgeInsetsDirectional.zero, // appbar icon들 padding.
              leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.add, size: 28),
                onPressed: () {},
              ),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.search, size: 28),
                onPressed: () {},
              ),
            ),
          ],
          body: Container(
            color: Colors.white,
          ),
        ),
      );
}
