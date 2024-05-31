import 'package:flutter_start2may/home/model/loan_model.dart';

import '../../../utils/exports.dart';

class LoanOffersCardWidget extends GetView<HomeController> {
  final LoanModel data;

  const LoanOffersCardWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(data.loanType);
      },
      child: Card(
        shadowColor: Colors.grey,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: ConstantColors.cardBoderColor,
            width: 1,
          ),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Visibility(
              visible: data.isDiscountVisible,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: const BoxDecoration(
                  color: ConstantColors.lightOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: CustomTextWidget(
                    data: data.discountLabel,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.orangeText,
                  ),
                ),
              ),
            ),
            SizedBox(height: data.isDiscountVisible ? 10 : 35),
            SvgPicture.asset(
              data.iconPath,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            CustomTextWidget(
              data: data.loanType,
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
