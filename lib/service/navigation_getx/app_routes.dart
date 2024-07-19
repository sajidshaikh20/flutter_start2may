import 'package:flutter_start2may/dashboard/binding/dashboard_bindings.dart';
import 'package:flutter_start2may/dashboard/ui/dashboard.dart';
import 'package:flutter_start2may/home/bindings/home_binding.dart';
import 'package:flutter_start2may/middleware/route_auth_middleware.dart';

import '../../utils/exports.dart';

class SplashRoutes {
  SplashRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.initial,
      page: () => const Splash(),
      binding: SplashBinding(),
      middlewares: [
        RouteAuthMiddleware()
      ],
      participatesInRootNavigator: true,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}

class LoginRoutes {
  LoginRoutes._();

  static final routes = <GetPage>[
    GetPage(
      name: AppPaths.login,
      page: () =>  const LoginScreen(),
      bindings: [
        LoginBinding(),
        OtpBinding(),
      ],
      children: [
        GetPage(
          name: AppPaths.otp,
          page: () => const OtpScreen(),
        ),
        GetPage(
          name: AppPaths.verifiedScreen,
          page: () => const VerifiedScreen(),
        ),
        GetPage(
          name: AppPaths.mPinSetup,
          page: () => const SetupMpinScreen(),
        ),
        GetPage(
          name: AppPaths.pinSetupSuccess,
          page: () =>  const SetupSuccessfulScreen(),
        ),
      ],
    ),
  ];
}

class DashboardRoutes {
  DashboardRoutes._();

  static final routes = [
    GetPage(
        name: AppPaths.dashboard,
        binding: DashboardBindings(),
        page: () => const DashboardPage(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        bindings: [
          HomeBinding()
        ],
        children: [
          ...HomeRoutes.routes,
          ...RewardsRoutes.routes,
          ...ProfileRoutes.routes,
        ],
        transition: Transition.noTransition),
  ];
}

class HomeRoutes {
  HomeRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.home,

      page: () => const MyHome(),
    ),
  ];
}

class RewardsRoutes {
  RewardsRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.rewards,
      page: () => const RewardPage(),
    ),
  ];
}

class ProfileRoutes {
  ProfileRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.rewards,
      page: () => const ProfilePage(),
    ),
  ];
}
