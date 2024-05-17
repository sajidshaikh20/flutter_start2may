// splash_routes.dart

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
  static final routes = [
    GetPage(
      name: AppPaths.login,
      page: () => const LoginScreen(),
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

class HomeRoutes {
  HomeRoutes._();

  static final routes = [
    GetPage(
      name: AppPaths.home,
      page: () => const MyHome(),
    ),
  ];
}
