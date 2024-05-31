import '../../utils/exports.dart';
import '../model/loan_model.dart';

class HomeController extends GetxController {
  var topPageLength = 3;

  var topPagerIndex = 0.obs;

  var bottomPagerIndex = 0.obs;

  var accountOpenList= 3;



  var loanWidgetList = <LoanModel>[];
  @override
  void onInit() {
    super.onInit();
    dataAddForLoanList();

  }

  dataAddForLoanList(){
    loanWidgetList.add(LoanModel(true, "Get at 0.5% fees", 'assets/svg/ic_gold_loan.svg', "Gold Loan"));
    loanWidgetList.add(LoanModel(true, "Get at 0.4% fees", 'assets/svg/ic_personal_loan.svg', "Personal Loan"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_bussiness_loan.svg', "Bussiness Loan"));
    loanWidgetList.add(LoanModel(true, "", 'assets/svg/ic_home_loan.svg', "Home Loan"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_lap.svg', "Lap"));

  }
}
