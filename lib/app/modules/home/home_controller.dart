import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var isDark = false;

  final saveModeType = GetStorage();

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  void _loadTheme() {
    if (saveModeType.hasData('isDark')) {
      isDark = saveModeType.read('isDark');
    } else {
      var brightness = WidgetsBinding.instance.window.platformBrightness;
      isDark = (brightness == Brightness.dark);
    }
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    update();
  }

  void changeTheme(bool state) {
    isDark = state;
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    saveModeType.write('isDark', isDark);
    update();
  }
}
