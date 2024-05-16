import '../../../utils/exports.dart';

class SetupSuccessfulScreen extends StatelessWidget {
  const SetupSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      print('Three second has passed.');
      //Navigator.popAndPushNamed(context, AppPaths.home);
      // context.goNamed(AppRoutes.getHome.name);
      Get.offAll(const MyHome());
    });

    return Scaffold(
        appBar: AppBar(
          title: const WelcomeRow(),
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
                data: Constants.setupSuccessful,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 182),
                child: const CustomTextWidget(
                  data: Constants.setupSuccessfulTitle,
                  fontSize: 16,
                  color: ConstantColors.grey,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }
}
