import '../../../utils/exports.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Future<void> _navigationFuture;

  @override
  void initState() {
    super.initState();
    _navigationFuture = _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.off(const LoginScreen());

    //context.goNamed(AppRoutes.rootLoginRoute.name);
    //GoRouter.of(context).goNamed(AppRoutes.rootLoginRoute.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/Splash_logo.png")),
    );
  }

  @override
  void dispose() {
    _navigationFuture.ignore();
    super.dispose();
    print("Splash screen dispose");
  }
}
