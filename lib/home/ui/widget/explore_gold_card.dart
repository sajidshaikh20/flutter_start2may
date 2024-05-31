import 'package:flutter_start2may/utils/exports.dart';

class ExploreGoldCard extends GetView<HomeController> {
  const ExploreGoldCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 20.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              ConstantColors.gradientOrangeStart,
              ConstantColors.gradientOrangeEnd
            ],
          ),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/dissolve.png",
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Stack(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 21, left: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          data: Constants.keepGoldSafeCardTitle,
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomTextWidget(
                          data: Constants.getGoldSafeDesc,
                          fontSize: 14.sp,
                          opacity: 0.9,
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
                              data: Constants.exploreLockers,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 30,
                  ),
                  child: SvgPicture.asset(
                    'assets/svg/ic_explore_gold_fluent_vault2.svg',
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/ic_explore_gold_fluent_vault.svg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
