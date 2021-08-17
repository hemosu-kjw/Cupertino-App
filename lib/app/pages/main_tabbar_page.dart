import 'package:flutter/material.dart';

import '../../main.dart';

class MainTabBarPage extends StatefulWidget {
  //const MainTabBarPage({Key? key}) : super(key: key);
  final String appTitle = 'AppBar UI';

  @override
  _MainTabBarPageState createState() => _MainTabBarPageState();
}

class _MainTabBarPageState extends State<MainTabBarPage> {
  // var img;
  // initState() {
  //   super.initState();
  //   imageLoading();
  // }

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
              length: 4,
              child: Scaffold(
                // extendBodyBehindAppBar: true, // ANCHOR appbar 투명화.

                appBar: AppBar(
                  title: Text(MyApp.appTitle),
                  // backgroundColor: Colors.transparent, // ANCHOR appbar 투명화.
                  elevation: 0.0, // ANCHOR appbar 투명화.
                  titleSpacing: 30.0,
                  centerTitle: true,
                  // leading: IconButton(
                  //   icon: Icon(Icons.menu),
                  //   onPressed: () {},
                  // ),
                  // actions: [
                  //   IconButton(
                  //       icon: Icon(Icons.notifications_none), onPressed: () {}),
                  //   SizedBox(width: 10.0),
                  //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  //   SizedBox(width: 10.0),
                  // ],
                  // backgroundColor: Colors.green[300],
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        // image: DecorationImage(image: img, fit: BoxFit.cover),

                        // gradient: LinearGradient(
                        //   colors: [Colors.green, Color(0xffEF5350)],
                        //   begin: Alignment.bottomRight,
                        //   end: Alignment.topLeft,
                        // ),
                        ),
                  ),
                  bottom: TabBar(
                    indicatorWeight: 3.0,
                    indicatorColor: Colors.white,
                    isScrollable: false,
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'Home'),
                      Tab(icon: Icon(Icons.list_alt), text: 'Feed'),
                      Tab(icon: Icon(Icons.person), text: 'Profile'),
                      Tab(icon: Icon(Icons.settings), text: 'Settings'),
                    ],
                  ),
                ),
                //bottomSheet: ,
                body: TabBarView(
                  children: <Widget>[
                    // HomePage(),
                    // FeedPage(),
                    // ProfilePage(),
                    // SettingPage(),
                    buildPage('Home Page'),
                    buildPage('Feed Page'),
                    buildPage('Profile Page'),
                    buildPage('Settings Page'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Future<void> imageLoading() async {
  //   img = NetworkImage('https://source.unsplash.com/random');
  // }

  Widget buildPage(String text) {
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
