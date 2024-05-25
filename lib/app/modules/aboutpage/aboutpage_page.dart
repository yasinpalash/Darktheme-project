import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'aboutpage_controller.dart';

class AboutpagePage extends GetView<AboutpageController> {
  const AboutpagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'About page is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
