import '../../utils/exports.dart';
import '../model/loan_model.dart';

class HomeController extends GetxController {
  var pageLength = 3;
  var currentIndex = 0.obs;



  var loanWidgetList = <LoanModel>[];
  @override
  void onInit() {

    // TODO: implement onInit
    super.onInit();
    dataAddForLoanList();

  }

  dataAddForLoanList(){
    loanWidgetList.add(LoanModel(true, "Get at 0.5% fees", 'assets/svg/ic_gold_loan.svg', "Gold Loan"));
    loanWidgetList.add(LoanModel(true, "Get at 0.4% fees", 'assets/svg/ic_personal_loan.svg', "Personal Loan"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_bussiness_loan.svg', "Bussiness Loan"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_loan.svg', "Home Loan"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_lap.svg', "Lap"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_lap.svg', "Lap"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_lap.svg', "Lap"));
    loanWidgetList.add(LoanModel(false, "", 'assets/svg/ic_home_lap.svg', "Lap"));
  }
}
