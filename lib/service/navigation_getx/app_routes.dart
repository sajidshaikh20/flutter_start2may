import 'package:flutter_start2may/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_paths.dart';

class SplashRoutes {
  SplashRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.initial,
        page: Splash.new,
        participatesInRootNavigator: true,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
