
import '../../../utils/exports.dart';

class SetupMpinScreen extends StatefulWidget {
  const SetupMpinScreen({super.key});

  @override
  State<SetupMpinScreen> createState() => _SetupMpinScreenState();
}

class _SetupMpinScreenState extends State<SetupMpinScreen> {

  String otp = '';

  String confirmOtp = '';

  String pageTitle = Constants.setupMpin;

  String pageTitleDescription = Constants.enterFourDigitMpin;

  bool isConfirmPage = false;

  bool isShowError = false;

 static final _otpPinFieldKey = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    String pageTitle =
        isConfirmPage ? Constants.confirmMpin : Constants.setupMpin;
    String pageTitleDescription = isConfirmPage
        ? Constants.reEnterTitleMessage
        : Constants.enterFourDigitMpin;

    return Scaffold(
      appBar: AppBar(
        title: const WelcomeRow(),
        centerTitle: true,
        backgroundColor: ConstantColors.blue,
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
              data: pageTitle,
              fontSize: 24,
              fontWeight: FontWeight.w600,
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
                data: pageTitleDescription,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ConstantColors.grey,
              ),
            ),
          ),

          //otp text field

          Padding(
            padding: const EdgeInsets.only(top: 84, left: 16),
            child: OtpPinField(
              key: _otpPinFieldKey,
              textInputAction: TextInputAction.done,
              onSubmit: (text) {
                setState(() {
                  saveOtp(text);
                });
              },
              onChange: (text) {
                setState(() {
                  saveOtp(text);
                });
              },
              onCodeChanged: (code) {},
              otpPinFieldStyle: OtpPinFieldStyle(
                defaultFieldBorderColor: isShowError &&
                        (_otpPinFieldKey.currentState?.text.length ?? 0) != 4
                    ? Colors.red
                    : Colors.black,
                activeFieldBorderColor: isShowError &&
                        (_otpPinFieldKey.currentState?.text.length ?? 0) != 4
                    ? Colors.red
                    : Colors.black,
              ),
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

          Visibility(
            visible: isShowError &&
                (_otpPinFieldKey.currentState?.text.length ?? 0) != 4,
            child: const Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: 16,
              ),
              child: CustomTextWidget(
                data: Constants.mPinError,
                color: ConstantColors.red,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16, vertical: !isConfirmPage ? 0 : 35),
            child: Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: (_otpPinFieldKey.currentState?.text.length ?? 0) >= 4
                    ? Colors.orange
                    : Colors.grey,
                borderRadius: BorderRadius.circular(8), //
              ),
              child: MaterialButton(
                onPressed: (_otpPinFieldKey.currentState?.text.length ?? 0) >= 4
                    ? () {
                        setState(() {
                          _otpPinFieldKey.currentState?.clearOtp();

                          if (isConfirmPage) {
                            if (otp == confirmOtp) {
                              isShowError = false;
                              print(otp);
                              print(confirmOtp);

                              /*Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SetupSuccessfulScreen()));*/
                               // Navigator.popAndPushNamed(context, AppPaths.setupSuccessful);

                              context.goNamed(AppRoutes.getLoginSuccess.name);

                            } else {
                              print("error");
                              isShowError = true;
                            }
                          } else {
                            isConfirmPage = true;
                          }
                        });
                      }
                    : null,
                child: const Text(
                  Constants.confirm,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),

          Visibility(
            visible: !isConfirmPage,
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: CustomTextWidget(
                  data: Constants.iWillDoItLater,
                  fontSize: 14,
                  color: ConstantColors.blueBorder,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //this function save mpin or confirm mPin
  saveOtp(String text) {
    if (isConfirmPage) {
      confirmOtp = text;
    } else {
      otp = text;
    }
  }
}
