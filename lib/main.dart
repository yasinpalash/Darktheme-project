import 'package:darktheme/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/core/bindings/application_bindings.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: ApplicationBindings(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: homeController.isDark ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}
