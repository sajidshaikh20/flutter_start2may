import '../../../utils/exports.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // GoRouter.of(context).go(AppPaths.login);

    //GoRouter.of(context).pushNamed(MyAppRouteConstants.loginRouteName);

    Future.delayed(const Duration(seconds: 3), () {
      print('Three second has passed.');
      Navigator.popAndPushNamed(context, '/login', arguments: "jsonObject");

    });
    return Scaffold(
      body: Center(child: Image.asset("assets/images/Splash_logo.png")),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
