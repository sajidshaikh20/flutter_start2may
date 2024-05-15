import 'package:flutter_start2may/navigation/app_paths.dart';
import 'package:flutter_start2may/navigation/app_routes_constants.dart';

import '../../../utils/exports.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    initialLocation: AppPaths.initial,
     routes:
 [
    GoRoute(
      path: AppPaths.login,
      name: MyAppRouteConstants.loginRouteName,
      pageBuilder: (context, state) {
        return  MaterialPage(child: LoginScreen());
      },
    ),
    GoRoute(
      path: AppPaths.login,
      name: MyAppRouteConstants.otpRouteName,
      pageBuilder: (context, state) {
        return const MaterialPage(child: OtpScreen());
      },
    ),
  ]);
}
