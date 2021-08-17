import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';
// import '../widgets/image/first_widget.dart';
// import '../widgets/image/second_widget.dart';
// import '../widgets/image/third_widget.dart';
// import '../widgets/image/one_widget.dart';
// import '../widgets/image/two_widget.dart';
// import '../widgets/text/three_widget.dart';

class MainTabBottomPage extends StatefulWidget {
  //const MainTabBottomPage({Key? key}) : super(key: key);
  final String appTitle = 'AppBar UI';

  @override
  _MainTabBottomPageState createState() => _MainTabBottomPageState();
}

class _MainTabBottomPageState extends State<MainTabBottomPage> {
  // ANCHOR: bottomNavigationBar
  var _selectedIndex = 0.obs; // NOTE getx

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          Padding(
            // bottomNavigationBar 추가시에 Bottom을 bar 높이 만큼 준다.
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: DefaultTabController(
              length: 5,
              child: Scaffold(
                // extendBodyBehindAppBar: true, // ANCHOR appbar 투명화.

                appBar: AppBar(
                  title: Text(MyApp.appTitle),
                  // backgroundColor: Colors.transparent, // ANCHOR appbar 투명화.
                  elevation: 0.0, // ANCHOR appbar 투명화.
                  titleSpacing: 30.0,
                  centerTitle: true,

                  flexibleSpace: Container(
                    decoration: BoxDecoration(),
                  ),
                  bottom: TabBar(
                    indicatorWeight: 3.0,
                    indicatorColor: Colors.white,
                    isScrollable: true,
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'No Effect'),
                      Tab(icon: Icon(Icons.list_alt), text: 'Linear Gradient'),
                      Tab(icon: Icon(Icons.person), text: 'Radial Gradient'),
                    ],
                  ),
                ),
                bottomNavigationBar:
                    Obx(() => buildBottomNavigationBar()), // NOTE getx
                body: Obx(
                  () => TabBarView(
                    children: _selectedIndex.value == 0
                        ? [
                            // FirstWidget(),
                            // SecondWidget(),
                            // ThirdWidget(),
                          ]
                        : [
                            // OneWidget(),
                            // TwoWidget(),
                            // ThreeWidget(),
                          ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xfffa7d0f),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: _selectedIndex.value, //NOTE getx: 현재 선택된 Index
      onTap: (int index) {
        _selectedIndex.value = index; // NOTE getx
      },
      items: [
        BottomNavigationBarItem(
          label: 'Favorites',
          icon: Icon(Icons.favorite),
          //icon: Text('icon', textAlign: TextAlign.center),
        ),
        BottomNavigationBarItem(
          label: 'Music',
          icon: Icon(Icons.music_note),
        ),
      ],
    );
  }
}
