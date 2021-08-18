import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'sub/first_page.dart';
import 'sub/second_page.dart';
import 'sub/third_page.dart';

class MainCupertinoNaviPage extends StatefulWidget {
  //const MainCupertinoNaviPage({Key? key}) : super(key: key);
  @override
  _MainCupertinoNaviPageState createState() => _MainCupertinoNaviPageState();
}

class _MainCupertinoNaviPageState extends State<MainCupertinoNaviPage> {
  @override
  Widget build(BuildContext context) {
    //
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Explore',
        middle: Text('Cupertino Style UI'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Text('done'),
          onPressed: () {},
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) {
                return FirstPage();
              });
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) {
                return SecondPage();
              });
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) {
                return ThirdPage();
              });
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
