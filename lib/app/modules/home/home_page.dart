import 'package:darktheme/app/modules/aboutpage/aboutpage_page.dart';
import 'package:darktheme/app/modules/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        actions: [
          GetBuilder<HomeController>(builder: (_) {
            return Switch(
                value: controller.isDark,
                onChanged: (value) {
                  controller.changeTheme(value);
                  print('state:$value');
                });
          })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Home Page'),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Get.to(const AboutpagePage());
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                color: colorSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
