import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

/**
 * 웹 개발자가 단일 파일에서 모든 정의를 그룹화하여 CSS 파일에서 
 * 스타일 마크업을 중앙집중식으로 처리하는 것과 유사한 방식으로 
 * 스타일 정의를 중앙집중식으로 처리할 수 있습니다. 이렇게 하면 
 * 앱 전체에서 스타일을 매우 쉽게 재사용하고 재정의할 수 있습니다.
 */

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}
