import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherPage extends StatelessWidget {
  //const FirstPage({Key? key}) : super(key: key);
  final String appTitle = 'Title';

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: 'Explore',
          middle: Text('Cupertino Style UI'),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Text('done'),
            onPressed: () {},
          ),
        ),
        // appbar 아래로 위젯이 들어가지 않게 한다.(SafeArea)
        child: Center(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Other Page',
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
          ),
        ),
      );
}
