import 'package:get/get.dart';

class SplashController extends GetxController {

  final counter = 0.obs;

  incrementCounter() {
    counter.value++;
    print(counter);
  }
}
