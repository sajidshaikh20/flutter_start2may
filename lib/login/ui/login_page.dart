import '../../../utils/exports.dart';

class LoginScreen extends GetView<LoginController> {
 const LoginScreen({super.key});

/*  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {*/

 // final LoginController controller = Get.find<LoginController>();

  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(" Login build method");

    var emailByArguments = controller.parameters['email'];

    print(emailByArguments);

    var email = controller.parameters['email'];
    var message = controller.parameters['message'];
    print("$email + $message");

    return Scaffold(
      appBar: AppBar(
        title: const WelcomeRow(),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ConstantColors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 35, left: 16),
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: CustomTextWidget(
                data: Constants.getQuick,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 12,
              left: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 8, // 80% of the space
                  child: CustomTextWidget(
                    data: Constants.signUp,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.grey,
                  ),
                ),
                Spacer(flex: 2), // 30% of the space
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
            child: Form(
              key: _formKey,
              child: TextFormField(
                  controller: controller.phoneController,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  onChanged: (value) {
                    _formKey.currentState?.validate();
                    controller.phoneNumberListener();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please return Phone Number";
                    } else if (!isContactNumberValidate(value)) {
                      return "Please enter a valid Phone Number";
                    }
                    return null;
                  },
                  cursorColor: ConstantColors.blueBorder,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelStyle: const TextStyle(
                      color: ConstantColors.blueBorder,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: ConstantColors.blueBorder, width: 2.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelText: Constants.mobileNumber,
                    hintText: Constants.enterMobileNumber,
                  )),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15, left: 16, right: 150),
              child: RichText(
                text: TextSpan(
                  text: 'By clicking on Verify, you agree to ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Terms & conditions',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Terms & conditions clicked');
                        },
                    ),
                  ],
                ),
              )),
          const Spacer(
            flex: 1,
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: controller.phoneNumber.toString().length >= 10
                      ? Colors.orange
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(8), //
                ),
                child: MaterialButton(
                  onPressed: controller.phoneNumber.toString().length >= 10
                      ? () {
                          /*Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                OtpScreen(phoneNumber: phoneController.text)));*/
                          // Navigator.popAndPushNamed(context, AppRoutes.getLoginOtp.name, arguments: phoneController.text);
                          /*context.goNamed(
                          AppRoutes.getLoginOtp.path,
                        );*/
                          Get.to(const OtpScreen(),
                              arguments: controller.phoneNumber.toString());
                        }
                      : null,
                  child: const Text(
                    Constants.verify,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
