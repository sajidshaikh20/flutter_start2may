import 'package:flutter_start2may/utils/exports.dart';

class RefersCardCustomWidget extends GetView<HomeController> {
  const RefersCardCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: ConstantColors.lightGrey,
          width: 1.0,
        ),
      ),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 20.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ic_refers_background.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21, left: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        data: Constants.getRewardedTitle,
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTextWidget(
                        data: Constants.earnUptoDesc,
                        fontSize: 12.sp,
                        opacity: 0.9,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            print("refer");
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(11)),
                            ),
                          ),
                          child: CustomTextWidget(
                            data: Constants.referNow,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/svg/img_refers_card_gift.svg',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/ic_refers_star.svg'),
                const SizedBox(width: 5),
                CustomTextWidget(
                  data: Constants.points,
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(width: 5),
                CustomTextWidget(
                  data: Constants.refersPoints,
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
