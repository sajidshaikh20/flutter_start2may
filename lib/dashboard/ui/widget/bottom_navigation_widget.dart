import '../../../utils/exports.dart';

class BottomNavigationWidget extends GetWidget<DashboardController>{

  const BottomNavigationWidget({super.key});


  @override
  Widget build(BuildContext context) {

    print("bottom navigation");
    return Obx(
      () => SizedBox(
        height: 70,
        child: BottomNavigationBar(
          iconSize: 24,
          items: controller.navigationItems,
          onTap: (index) {
            controller.onItemClick(index);
          },
          selectedItemColor: ConstantColors.activeOrangeColor,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          currentIndex: controller.selectedIndex.value,
        ),
      ),
    );
  }
}
