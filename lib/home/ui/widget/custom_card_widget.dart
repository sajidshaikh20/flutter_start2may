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
      height: 20.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              ConstantColors.gradientBlueStart,
              ConstantColors.gradientBlueEnd
            ],
            stops: [0.007, 1],
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      data: Constants.plannedDreamCardTitle,
                      fontSize: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextWidget(
                      data: Constants.plannedDreamCardDesc,
                      fontSize: 12.sp,
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
                        child: const CustomTextWidget(
                          data: Constants.viewEmiCalulater,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/svg/ic_calculater.svg',
            height: 65.0,
            width: 49.0,
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
    );
  }
}
