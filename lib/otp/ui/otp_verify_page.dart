import '../../../utils/exports.dart';

class OtpScreen extends StatefulWidget {
 // final String? phoneNumber;

 const  OtpScreen({super.key,} );

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp = '';

  final _otpPinFieldKey = GlobalKey<OtpPinFieldState>();

  int _secondsRemaining = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {

    final phoneNumber = ModalRoute.of(context)?.settings.arguments;


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
            padding: EdgeInsets.only(
              top: 35,
              left: 16,
            ),
            child: CustomTextWidget(
              data: Constants.enterOtp,
              fontSize: 24,
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
                setState(() {
                  otp = text;
                });
              },
              onChange: (text) {
                setState(() {
                  otp = text;
                });
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

          Padding(
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
                    _secondsRemaining == 0
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
                            text: '00.$_secondsRemaining sec',
                            style: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                            ),
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
                color: otp.length >= 4 ? Colors.orange : Colors.grey,
                borderRadius: BorderRadius.circular(8), //
              ),
              child: MaterialButton(
                onPressed: otp.length >= 4
                    ? () {
                       /* Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const VerifiedScreen()));*/
                       // Navigator.popAndPushNamed(context, AppPaths.verified);
                  context.pushNamed(AppRoutes.getLoginVerified.name);


                }
                    : null,
                child: const Text(
                  Constants.continueTitle,
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
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  //Function for Start timer
  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
        }
      });
    });
  }
}
