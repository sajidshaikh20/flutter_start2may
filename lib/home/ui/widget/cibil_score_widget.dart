import 'package:flutter_start2may/utils/exports.dart';

import 'cibil_gouge_meter.dart';

class CibilScoreWidget extends GetView<HomeController> {
  const CibilScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: ConstantColors.lightGrey,
            width: 0.5,
          )),
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    data: Constants.getFreeCibitTitle,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: CustomTextWidget(
                      data: Constants.creditRepostDesc,
                      fontSize: 10.sp,
                      opacity: 0.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextWidget(
                      data: Constants.checkNow,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: ConstantColors.blueBorder,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CibilGougeMeter(),
            ),
          ],
        ),
      ),
    );
  }
}
