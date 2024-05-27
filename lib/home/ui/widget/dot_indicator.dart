import '../../../utils/exports.dart';

class DotIndicator extends GetView<HomeController> {
  final int index;

  const DotIndicator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Opacity(
        opacity: controller.currentIndex.value == index ? 0.5 : 0.2,
        child: Container(
          height: 1.h * 0.7,
          width: controller.currentIndex.value == index ? 6.w : 3.w,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              color: ConstantColors.indicatorColor,
              borderRadius: BorderRadius.circular(8)),
        ),
      );
    });
  }
}
