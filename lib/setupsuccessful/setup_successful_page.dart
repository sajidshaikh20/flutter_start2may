
import 'package:flutter_start2may/navigation/app_paths.dart';

import '../../../utils/exports.dart';

class SetupSuccessfulScreen extends StatelessWidget {
  const SetupSuccessfulScreen({super.key});



  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {
      print('Three second has passed.');
      Navigator.popAndPushNamed(context, AppPaths.home);
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
             Padding(
              padding: const EdgeInsets.only(top: 40),
              child: CustomTextWidget(
                data: Constants.setupSuccessful,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 182.w

                ),
                child: CustomTextWidget(
                  data: Constants.setupSuccessfulTitle,
                  fontSize: 16.sp,
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
