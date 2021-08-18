import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  //const FirstPage({Key? key}) : super(key: key);
  final String appTitle = 'Title';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Search',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
