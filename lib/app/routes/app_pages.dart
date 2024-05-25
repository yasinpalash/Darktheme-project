import 'home_routes.dart';
import 'aboutpage_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';

  static final routes = [
    ...HomeRoutes.routes,
		...AboutpageRoutes.routes,
  ];
}
