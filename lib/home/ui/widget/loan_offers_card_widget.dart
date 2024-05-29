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
      splashFactory: NoSplash.splashFactory,
      child: Card(
        elevation: 1,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
          child: Column(
            children: [
              Visibility(
                visible: data.isDiscountVisible,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: const BoxDecoration(
                    color: ConstantColors.lightOrange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
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
      ),
    );
  }
}
