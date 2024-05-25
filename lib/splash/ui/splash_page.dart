
import '../../../utils/exports.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  final SplashController controller = Get.find<SplashController>();

  late Future<void> _navigationFuture;

  @override
  void initState() {
    super.initState();
    _navigationFuture = _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));

    var data = {"email": "test@gmail.com", "message": "hi!"};


    /*Get.off(const LoginScreen(),
      transition: Transition.rightToLeft,
    );*/

    Get.toNamed(AppPaths.login, parameters: data,arguments: data);
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
          Center(child: Image.asset("assets/images/ic_splash_logo.png")
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() {
                return Text(controller.counter.string,
                    style: const TextStyle(fontSize: 30));
              }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Text("add"),
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
