import '../utils/exports.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {

    var isAuthenticated = SharedPref.getBool(PrefsKey.isLoggedIn, false);
    if (isAuthenticated) {
      return const RouteSettings(name: AppPaths.dashboard);
    } else {
      return null;
    }
  }
}
