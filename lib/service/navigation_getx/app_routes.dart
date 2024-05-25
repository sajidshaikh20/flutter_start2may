import 'package:flutter_start2may/dashboard/binding/dashboard_bindings.dart';
import 'package:flutter_start2may/dashboard/ui/dashboard.dart';

import '../../utils/exports.dart';

class SplashRoutes {
  SplashRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.initial,
      page: () => const Splash(),
      binding: SplashBinding(),
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
      page: () => const LoginScreen(),
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
          page: () => const SetupSuccessfulScreen(),
        ),
      ],
    ),
  ];
}


class DashboardRoutes {
  DashboardRoutes._();

  static final routes = [
    GetPage(
        binding: DashboardBindings(),
        name: AppPaths.dashboard,
        page: () =>  const DashboardPage(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
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

