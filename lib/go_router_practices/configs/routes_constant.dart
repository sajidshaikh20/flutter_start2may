abstract class AppRoutess {
  // Splash screen
  static const _splashScopeName = 'splash';
  static const rootSplash = AppRouteDataa('splash', _splashScopeName, true);

  // Get Started
  static const _getStartedScopeName = 'getStarted';
  static const rootGetStartedRoute =
  AppRouteDataa('getStarted', _getStartedScopeName, true);

  // Sign in
  static const _signInScopeName = 'signIn';
  static const getStartedSignIn = AppRouteDataa('getStartedSignIn', _signInScopeName);

  
  static const homeSignIn = AppRouteDataa('homeSignIn', _signInScopeName);
  static const userDetailSignIn =
  AppRouteDataa('userDetailSignIn', _signInScopeName);

  // Home
  static const _homeScopeName = 'home';
  static const rootHome = AppRouteDataa('home', _homeScopeName, true);

  // Users
  static const _usersScopeName = 'users';
  static const users = AppRouteDataa('users', _usersScopeName);

  // User Detail
  static const _userDetailScopeName = 'userDetail';
  static const userDetail = AppRouteDataa('userDetail', _userDetailScopeName);
}

class AppRouteDataa {
  final String name;
  final bool isRoot;
  final String scopeName;

  String get path => isRoot ? '/$name' : name;

  const AppRouteDataa(this.name, this.scopeName, [this.isRoot = false]);
}
