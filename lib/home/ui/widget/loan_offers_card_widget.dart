import '../../../utils/exports.dart';

class LoanOffersCardWidget extends GetView<HomeController> {
  final bool _isVisibleFees = true;

  const LoanOffersCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: 30.w,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        child: Column(
          children: [
            Visibility(
              visible: _isVisibleFees,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: const BoxDecoration(
                  color: ConstantColors.lightOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: const Center(
                  child: CustomTextWidget(
                    data: Constants.loanFeesTitle,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.orangeText,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SvgPicture.asset(
              'assets/svg/ic_gold_loan.svg',
              color: Colors.blue,
            ),

            const SizedBox(height: 10),
            CustomTextWidget(
              data: 'Personal Loan',
              fontSize: 10.sp,
              opacity: 0.8,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
