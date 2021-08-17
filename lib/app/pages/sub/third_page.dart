import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  //const FirstPage({Key? key}) : super(key: key);
  final String appTitle = 'Title';

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Cart',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
