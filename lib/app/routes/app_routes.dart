part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const MAIN = _Paths.MAIN;
  static const OTHER = _Paths.OTHER;
}

abstract class _Paths {
  static const MAIN = '/';
  static const OTHER = '/other';
}
