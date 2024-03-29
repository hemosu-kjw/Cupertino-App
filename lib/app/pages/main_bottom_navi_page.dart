import 'package:flutter/material.dart';
import 'package:start_flutter/app/widgets/bottom_navi_widget.dart';
import 'package:get/get.dart';
import '../../main.dart';

// import 'sub/first_page.dart';
// import 'sub/second_page.dart';
// import 'sub/third_page.dart';
// import 'sub/fourth_page.dart';

class MainBottomNaviPage extends StatefulWidget {
  //const MainBottomNaviPage({Key? key}) : super(key: key);
  @override
  _MainBottomNaviPageState createState() => _MainBottomNaviPageState();
}

class _MainBottomNaviPageState extends State<MainBottomNaviPage> {
  var _selectedIndex = 0.obs; // NOTE getx
  late List<Widget> _widgetOptions; // buildWidget()사용시.

  // List _widgetOptions = [
  //   FirstPage(),
  //   SecondPage(),
  //   ThirdPage(),
  //   FourthPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    _widgetOptions = [
      // NOTE: 멤버함수로 멤버변수를 초기화 할 경우 선언은 멤버변수자리,
      //초기화는 build(){} 안에서 해야 한다.
      buildWidget('one'),
      buildWidget('tow'),
      buildWidget('three'),
      buildWidget('fourth'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.appTitle),
        centerTitle: true,
      ),
      bottomNavigationBar: Obx(
        () => BottomNaviWidget(
          index: _selectedIndex.value,
          onChangedTab: onChangedTab,
        ),
      ), // NOTE getx
      body: Center(
        child: Obx(
          // NOTE getx
          () => _widgetOptions.elementAt(_selectedIndex.value),
        ),
      ),
    );
  }

  void onChangedTab(int value) {
    _selectedIndex.value = value;
  }

  Widget buildWidget(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
