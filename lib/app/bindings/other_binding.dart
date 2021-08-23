import 'package:get/get.dart';
import 'package:start_flutter/app/controllers/main_controller.dart';
import 'package:start_flutter/app/controllers/other_controller.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(
      () => OtherController(),
    );
  }

  void initailize() {
    //TODO: add to initailized something.
  }
}
