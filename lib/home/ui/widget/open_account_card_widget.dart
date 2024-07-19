import 'package:flutter_start2may/utils/exports.dart';

class OpenAccountCardWidget extends GetView<HomeController> {
  const OpenAccountCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: ConstantColors.lightGrey,
          width: 1,
        ),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    data: Constants.investAchieve,
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextWidget(
                    data: Constants.achieveGoalDesc,
                    fontSize: 11.sp,
                    opacity: 0.6,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        CustomTextWidget(
                          data: Constants.openTradingAcount,
                          fontSize: 13.sp,
                          color: ConstantColors.blueBorder,
                          fontWeight: FontWeight.w500,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child:
                              SvgPicture.asset("assets/svg/ic_right_arrow.svg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 1,
                top: 20,
              ),
              child: SvgPicture.asset("assets/svg/ic_calculater.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
