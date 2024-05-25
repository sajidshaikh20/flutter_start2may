import 'package:get/get.dart';
import '../controller/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpController());
  }

}


//getPut :- Get.put() will put Immediately
/*Will inject a dependency and start executing immediately when it's '
'injected, and I mean with that that its lifecycle methods like onInit() '
'and onReady() will execute when you inject it like this:*/


