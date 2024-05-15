import 'package:flutter_start2may/navigation/app_paths.dart';

import '../../../utils/exports.dart';

class LoginScreen extends StatefulWidget with WidgetsBindingObserver {
  final String? data;

  LoginScreen({super.key, this.data});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(" inint");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print(" didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print(" build");

    final arguments = ModalRoute.of(context)?.settings.arguments;

    print(arguments);

    double screenWidth = MediaQuery.of(context).size.width;

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const WelcomeRow(),
        centerTitle: true,
        backgroundColor: ConstantColors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300.w),
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 16),
              child: CustomTextWidget(
                data: Constants.getQuick,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 16,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 350),
              child: CustomTextWidget(
                data: Constants.signUp,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: ConstantColors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
            child: TextFormField(
                controller: phoneController,
                key: _formKey,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                onChanged: (value) {
                  setState(() {
                    _formKey.currentState?.validate();
                  });
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: phoneController.text.length >= 10
                    ? Colors.orange
                    : Colors.grey,
                borderRadius: BorderRadius.circular(8), //
              ),
              child: MaterialButton(
                onPressed: phoneController.text.length >= 10
                    ? () {
                        /*Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                OtpScreen(phoneNumber: phoneController.text)));*/
                  Navigator.popAndPushNamed(context, AppPaths.otp, arguments: phoneController.text);
                      }
                    : null,
                child: const Text(
                  Constants.verify,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant LoginScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("sajid dispose");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print(" deactivate");
  }
}
