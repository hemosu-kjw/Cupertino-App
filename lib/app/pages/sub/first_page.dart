import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  //const FirstPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Text(
            'Home',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
    );
  }

  // Widget buildList() => ListView(
  //       children: [
  //         Container(
  //           margin: EdgeInsets.only(bottom: 8),
  //           child: Image.network(
  //             'https://source.unsplash.com/random?sig=4',
  //             height: 300,
  //           ),
  //         )
  //       ].expand((image) => [image, image, image, image, image]).toList(),
  //     );
}
