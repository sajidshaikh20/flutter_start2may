import '../../../utils/exports.dart';

class BottomNavigationWidget extends GetView<DashboardController> {

  //final DashboardController controller;

  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("bottom navigation");
    double screenHeight = MediaQuery.of(context).size.height;
    double bottomNavHeight = screenHeight;
    return Obx(
      () => SizedBox(
        height: 10.h,
        width: double.infinity,
        child: BottomNavigationBar(
          iconSize: 20,
          items: controller.navigationItems,
          onTap: (index) {
            controller.onItemClick(index);
          },
          selectedItemColor: ConstantColors.activeOrangeColor,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          elevation: 1,
          currentIndex: controller.selectedIndex.value,
        ),
      ),
    );
  }
}
