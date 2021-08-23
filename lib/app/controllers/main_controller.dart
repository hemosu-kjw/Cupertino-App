import 'package:get/get.dart';

class MainController extends GetxController {
  var count = 1.obs;
  void increment() {
    count++;
  }
}
