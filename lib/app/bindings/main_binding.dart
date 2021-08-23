import 'package:get/get.dart';
import 'package:start_flutter/app/controllers/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
  }

  void initailize() {
    //TODO: add to initailized something.
  }
}
