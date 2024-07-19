
abstract class AppRoutes {
  // Splash screen
  static const _splashScopeName = 'splash';
  static const rootSplash = AppRouteData('splash', _splashScopeName, true);

  // Login screen
  static const _getLoginScopeName = 'login';
  static const rootLoginRoute = AppRouteData('getLogin', _getLoginScopeName, true);

  // otp screen
  static const _getLoginOtp = 'otp';
  static const getLoginOtp = AppRouteData('getLoginOtp', _getLoginOtp);

  //Verified screen
  static const _getLoginVerified = 'verified';
  static const getLoginVerified = AppRouteData('getLoginVerified', _getLoginVerified);
  
  //mPin setup screen
  static const _getLoginMpinSetup = 'mPinSetup';
  static const getLoginPinSetup = AppRouteData('getLoginMpinSetup', _getLoginMpinSetup);

  //mPin setup screen
  static const _getLoginSuccess = 'loginSuccess';
  static const getLoginSuccess = AppRouteData('loginSuccess', _getLoginSuccess);

  //Home screen
  static const _getHome = 'myHome';
  static const getHome = AppRouteData('myHome', _getHome,true);


}

class AppRouteData {
  final String name;
  final bool isRoot;
  final String scopeName;

  String get path => isRoot ? '/$name' : name;

  const AppRouteData(this.name, this.scopeName, [this.isRoot = false]);
}
