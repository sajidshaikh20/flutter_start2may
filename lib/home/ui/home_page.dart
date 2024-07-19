import '../../../utils/exports.dart';
import '../CustomPageView.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Top Page View with Indicators
                SizedBox(
                  height: 21.h,
                  child: CustomPageView(
                    itemCount: controller.topPageLength,
                    currentIndex: controller.topPagerIndex,
                    viewportFraction: 0.9,
                    itemBuilder: (_, __) => const CustomCardWidget(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.topPageLength,
                    (index) => DotIndicator(
                      index: index,
                      currentIndex: controller.topPagerIndex,
                    ),
                  ),
                ),

                // Loan Offer Title
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: CustomTextWidget(
                    data: Constants.loanOfferTitleHome,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // Loan Offers Grid
                Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 35),
                  child: SizedBox(
                    height: 28.h,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.loanWidgetList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return LoanOffersCardWidget(
                          data: controller.loanWidgetList[index],
                        );
                      },
                    ),
                  ),
                ),
                const ExploreGoldCard(),
                const SizedBox(height: 36),
                const CibilScoreWidget(),
                const SizedBox(height: 36),
                const RefersCardCustomWidget(),
                // Additional Widgets

                const SizedBox(height: 36),
                // Bottom Page View with Indicators
                SizedBox(
                  height: 25.h,
                  width: double.infinity,
                  child: CustomPageView(
                    itemCount: controller.accountOpenList,
                    currentIndex: controller.bottomPagerIndex,
                    itemBuilder: (_, __) => const OpenAccountCardWidget(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.accountOpenList,
                    (index) => DotIndicator(
                      index: index,
                      currentIndex: controller.bottomPagerIndex,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
