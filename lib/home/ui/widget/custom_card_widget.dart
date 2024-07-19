import 'package:flutter_start2may/utils/exports.dart';

//GetView
// ==========
// If we have single controller as a  dependency then we can use GetView
//instead of Statelesswidget and avoid writing Get.find

//GetWidget
// ==========
//It is similar to GetView with one difference it gives the same instance of
//Get.find everytime. It becomes very useful when used in combination with
//Get.create

class CustomCardWidget extends GetView<HomeController> {
  const CustomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              ConstantColors.gradientBlueEnd,
              ConstantColors.gradientBlueStart,
            ],
          ),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/dissolve.png",
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 21, left: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      data: Constants.plannedDreamCardTitle,
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextWidget(
                      data: Constants.plannedDreamCardDesc,
                      fontSize: 11.sp,
                      opacity: 0.6,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          print("open calculater");
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                11)), // Set border radius to zero
                          ),
                        ),
                        child: CustomTextWidget(
                          data: Constants.viewEmiCalulater,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                'assets/svg/ic_calculater.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
