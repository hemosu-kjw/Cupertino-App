import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  //const FirstPage({Key? key}) : super(key: key);
  final String appTitle = 'Title';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildList(),
    );
  }

  Widget buildList() => ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Image.network(
              'https://source.unsplash.com/random?sig=4',
              height: 300,
            ),
          )
        ].expand((image) => [image, image, image, image, image]).toList(),
      );
}
