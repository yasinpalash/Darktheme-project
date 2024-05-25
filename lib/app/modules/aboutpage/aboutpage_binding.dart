import 'package:get/get.dart';

import 'aboutpage_controller.dart';

class AboutpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutpageController>(
      () => AboutpageController(),
    );
  }
}
