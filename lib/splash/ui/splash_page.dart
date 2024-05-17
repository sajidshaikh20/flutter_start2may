import 'package:flutter_start2may/splash/controller/splash_controller.dart';
import '../../../utils/exports.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  late Future<void> _navigationFuture;

  final SplashController controller = Get.put(SplashController());

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
    print("buildmethod");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/Splash_logo.png")),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() {
                return Text(
                  controller.counter.string, style: TextStyle(fontSize: 30));
              })
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("add"),
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.increamentCounter();
        },
      ),
    );
  }

  @override
  void dispose() {
    _navigationFuture.ignore();
    super.dispose();
    print("Splash screen dispose");
  }
}
