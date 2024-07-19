import '../../../utils/exports.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OtpController otpController = Get.find<OtpController>();

  final _otpPinFieldKey = GlobalKey<OtpPinFieldState>();
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    startTimer();
    var phoneNumber = Get.arguments;
    print("otp screen number");
    print(phoneNumber);

    return Scaffold(
      appBar: AppBar(
        title: const WelcomeRow(),
        centerTitle: true,
        backgroundColor: ConstantColors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white, // Change this to your desired color
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              left: 16,
            ),
            child: CustomTextWidget(
              data: Constants.enterOtp,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

          Padding(
              padding: const EdgeInsets.only(
                top: 12,
                left: 16,
              ),
              child: RichText(
                text: TextSpan(
                  text: Constants.sentTo,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: phoneNumber.toString(),
                      style: const TextStyle(
                          color: ConstantColors.blueBorder,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: ConstantColors.blueBorder,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          //otp text field

          Padding(
            padding: const EdgeInsets.only(top: 84, left: 16),
            child: OtpPinField(
              key: _otpPinFieldKey,
              autoFillEnable: false,
              textInputAction: TextInputAction.done,
              onSubmit: (text) {
                otpController.otp.value = text;
              },
              onChange: (text) {
                otpController.otp.value = text;
              },
              onCodeChanged: (code) {},
              maxLength: 4,
              showCursor: true,
              cursorColor: ConstantColors.blueBorder,
              showCustomKeyboard: false,
              showDefaultKeyboard: true,
              cursorWidth: 3,
              mainAxisAlignment: MainAxisAlignment.start,
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.underlinedPinBoxDecoration,
            ),
          ),
          Obx(() {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 16,
                ),
                child: RichText(
                  text: TextSpan(
                    text: Constants.didNotReceive,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    children: [
                      otpController.secondsRemaining == 0
                          ? TextSpan(
                              text: 'Resend',
                              style: const TextStyle(
                                color: ConstantColors.blueBorder,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Resend');
                                })
                          : TextSpan(
                              text: "00.${otpController.secondsRemaining} sec",
                              style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ],
                  ),
                ));
          }),

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
                  color: otpController.otp.toString().length >= 4
                      ? Colors.orange
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(8), //
                ),
                child: MaterialButton(
                  onPressed: otpController.otp.toString().length >= 4
                      ? () {
                          /* Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const VerifiedScreen()));*/
                          // Navigator.popAndPushNamed(context, AppPaths.verified);
                          // context.pushNamed(AppRoutes.getLoginVerified.name);
                          Get.off(const VerifiedScreen());
                        }
                      : null,
                  child: const Text(
                    Constants.continueTitle,
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

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  //Function for Start timer
  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (otpController.secondsRemaining > 0) {
        otpController.secondsRemaining--;
      } else {
        _timer.cancel();
      }
    });
  }
}
