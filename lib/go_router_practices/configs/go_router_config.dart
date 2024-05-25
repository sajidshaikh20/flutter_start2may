import 'package:flutter_start2may/go_router_practices/configs/routes_constant.dart';
import 'package:flutter_start2may/go_router_practices/screens/get_started_screen.dart';
import 'package:flutter_start2may/go_router_practices/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/home_screen.dart';
import '../screens/sign_in_screen.dart';
import '../screens/user_detail_screen.dart';
import '../screens/users_screen.dart';



GoRouter provideGoRouter() {
  return GoRouter(
    initialLocation: AppRoutess.rootSplash.path,
    
    routes: [
      GoRoute(
        name: AppRoutess.rootSplash.name,
        path: AppRoutess.rootSplash.path,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: AppRoutess.rootGetStartedRoute.name,
        path: AppRoutess.rootGetStartedRoute.path,
        builder: (context, state) => const GetStartedScreen(),
        routes: [
          GoRoute(
            name: AppRoutess.getStartedSignIn.name,
            path: AppRoutess.getStartedSignIn.path,
            builder: (context, state) => const SignInScreen(),
          ),
        ],
      ),
      GoRoute(
        name: AppRoutess.rootHome.name,
        path: AppRoutess.rootHome.path,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: AppRoutess.homeSignIn.name,
            path: AppRoutess.homeSignIn.path,
            builder: (context, state) => const SignInScreen(),
          ),
          GoRoute(
            name: AppRoutess.users.name,
            path: AppRoutess.users.path,
            builder: (context, state) => const UsersScreen(),
            routes: [
              GoRoute(
                name: AppRoutess.userDetail.name,
                path: AppRoutess.userDetail.path,
                builder: (context, state) => const UserDetailScreen(),
                routes: [
                  GoRoute(
                    name: AppRoutess.userDetailSignIn.name,
                    path: AppRoutess.userDetailSignIn.path,
                    builder: (context, state) => const SignInScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
