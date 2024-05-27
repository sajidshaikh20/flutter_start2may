import '../../../utils/exports.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 21.h,
                  child: PageView.builder(
                      itemCount: controller.pageLength,
                      padEnds: false,
                      controller: PageController(
                        viewportFraction: 0.9,
                        initialPage: 0,
                      ),
                      onPageChanged: (int index) {
                        controller.currentIndex.value = index;
                      },
                      itemBuilder: (_, i) {
                        return const CustomCardWidget();
                      }),
                ),
                SizedBox(
                  height: 1.h,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(controller.pageLength,
                          (index) => DotIndicator(index: index))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 9, bottom: 16),
                  child: CustomTextWidget(
                    data: Constants.loanOfferTitleHome,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                      height: 212.sp,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(
                            parent: ScrollPhysics()),
                        shrinkWrap: true,
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return const LoanOffersCardWidget();
                        },
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
