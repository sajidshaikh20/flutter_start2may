import '../../../utils/exports.dart';

class BottomNavigationWidget extends GetView<DashboardController> {
  //final DashboardController controller;

  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 10.h,
        width: double.infinity,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 20,
          items: controller.navigationItems,
          onTap: (index) {
            controller.onItemClick(index);
          },
          selectedItemColor: ConstantColors.activeOrangeColor,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
          elevation: 15,
          currentIndex: controller.selectedIndex.value,
        ),
      ),
    );
  }
}
