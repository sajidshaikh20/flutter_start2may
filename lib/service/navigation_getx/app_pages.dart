import '../../../utils/exports.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = <GetPage>[
    ...SplashRoutes.routes,
    ...LoginRoutes.routes,
    ...DashboardRoutes.routes,
    ...HomeRoutes.routes,
    ...RewardsRoutes.routes,
    ...ProfileRoutes.routes
  ];
}
