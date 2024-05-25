import 'package:get/get.dart';

import '../modules/aboutpage/aboutpage_binding.dart';
import '../modules/aboutpage/aboutpage_page.dart';

class AboutpageRoutes {
  AboutpageRoutes._();

  static const aboutpage = '/aboutpage';

  static final routes = [
    GetPage(
      name: aboutpage,
      page: () => const AboutpagePage(),
      binding: AboutpageBinding(),
    ),
  ];
}
