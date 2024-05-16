import '../../../utils/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  static final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    print(" inint");
  }

  @override
  Widget build(BuildContext context) {
    print(" build");

    return Scaffold(
      appBar: AppBar(
        title: const WelcomeRow(),
        centerTitle: true,
        backgroundColor: ConstantColors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 35, left: 16),
            child: CustomTextWidget(
              data: Constants.getQuick,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 16,
            ),
            child: const CustomTextWidget(
              data: Constants.signUp,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ConstantColors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
            child: Form(
              key: _formKey,
              child: TextFormField(
                  controller: phoneController,
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
                        // Navigator.popAndPushNamed(context, AppRoutes.getLoginOtp.name, arguments: phoneController.text);
                        context.goNamed(
                          AppRoutes.getLoginOtp.path,
                        );
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
