import '../../utils/exports.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  var phoneNumber = "".obs;

  phoneNumberListener() {
    phoneNumber.value = phoneController.text.toString();
  }

  var parameters = Get.parameters;

  @override
  void onInit() {
    super.onInit();
    print("getInit");
  }
}
