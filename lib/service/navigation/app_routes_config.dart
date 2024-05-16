import '../../../../utils/exports.dart';

GoRouter myAppRouter() {
  return GoRouter(initialLocation: AppRoutes.rootSplash.path, routes: [
    GoRoute(
      name: AppRoutes.rootSplash.name,
      path: AppRoutes.rootSplash.path,
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      name: AppRoutes.rootLoginRoute.name,
      path: AppRoutes.rootLoginRoute.path,
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          name: AppRoutes.getLoginOtp.name,
          path: AppRoutes.getLoginOtp.path,
          builder: (context, state) => const OtpScreen(),
        ),
        GoRoute(
          name: AppRoutes.getLoginVerified.name,
          path: AppRoutes.getLoginVerified.path,
          builder: (context, state) => const VerifiedScreen(),
        ),
        GoRoute(
          name: AppRoutes.getLoginPinSetup.name,
          path: AppRoutes.getLoginPinSetup.path,
          builder: (context, state) => const SetupMpinScreen(),
        ),
        GoRoute(
          name: AppRoutes.getLoginSuccess.name,
          path: AppRoutes.getLoginSuccess.path,
          builder: (context, state) => const SetupSuccessfulScreen(),
        ),
      ],
    ),
    GoRoute(
      name: AppRoutes.getHome.name,
      path: AppRoutes.getHome.path,
      builder: (context, state) => const MyHome(),
    ),
  ]);
}
