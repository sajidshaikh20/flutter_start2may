import '../../utils/exports.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  void initState() {
    super.initState();

   /* Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SetupMpinScreen())));*/

    Future.delayed(const Duration(seconds: 3), () {
      print('Three second has passed.');
    //  Navigator.popAndPushNamed(context, AppPaths.setupMpin);
     // context.goNamed(AppRoutes.getLoginPinSetup.name);
      Get.off(const SetupMpinScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const WelcomeRow(),
          iconTheme:const IconThemeData(
            color: Colors.white, // Change this to your desired color
          ),
          centerTitle: true,
          backgroundColor: ConstantColors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Center(
                      child: Image.asset(
                        "assets/images/outline.png",
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Image.asset(
                        "assets/images/green_circle.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(top: 40),
              child: CustomTextWidget(
                data: Constants.verified,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: CustomTextWidget(
                data: Constants.verifiedSuccessfully,
                fontSize: 16,
                color: ConstantColors.grey,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }


}
