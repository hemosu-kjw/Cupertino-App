import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * NOTE <pubspec.yaml> 1번줄 name: <start_flutter>를 프로젝트 패키지이름으로 수정. 
 */

class MainCupertinoPage extends StatefulWidget {
  //const MainCupertinoPage({Key? key}) : super(key: key);
  @override
  _MainCupertinoPageState createState() => _MainCupertinoPageState();
}

class _MainCupertinoPageState extends State<MainCupertinoPage> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: 'Explore',
          middle: Text('Cupertino Style UI'),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Text('done'),
            onPressed: () => Get.back(),
          ),
        ),
        // appbar 아래로 위젯이 들어가지 않게 한다.(SafeArea)
        child: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                    '대사관에서 위기를 처음 감지한 것은 15일 오전 11시 30분께(현지시간)로, 당시 외교부 본부와 영상회의를 하던 최 대사는 대사관 경비업체로부터 탈레반 부대가 차로 20분 거리까지 진입했다는 보고를 받았다. 이후 우방국 대사관에서 \'바로 모두 탈출하라\'는 긴급공지를 받았다.'),
                const SizedBox(height: 24),
                CupertinoButton.filled(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  onPressed: () => Get.toNamed('/other'),
                ),
              ],
            ),
          ),
        ),
      );
}
