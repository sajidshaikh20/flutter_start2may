import '../../../utils/exports.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    ...SplashRoutes.routes,
    ...LoginRoutes.routes,
    ...HomeRoutes.routes,
  ];
}
