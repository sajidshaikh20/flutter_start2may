import '../../../utils/exports.dart';

class CustomPageView extends StatelessWidget {
  final int itemCount;
  final RxInt currentIndex;
  final Widget Function(BuildContext, int) itemBuilder;
  final double viewportFraction;

  const CustomPageView({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    required this.itemBuilder,
    this.viewportFraction = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: itemCount,
      padEnds: false,
      controller: PageController(
        viewportFraction: viewportFraction,
        initialPage: 0,
      ),
      onPageChanged: (index) {
        currentIndex.value = index;
      },
      itemBuilder: itemBuilder,
    );
  }
}
