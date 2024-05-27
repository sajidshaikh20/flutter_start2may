import 'package:flutter_start2may/dashboard/controllers/dashboard_controller.dart';

import '../../utils/exports.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: "Hello, ",
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                text: "Rajesh  Mehta",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: ConstantColors.blue,
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: const [
            MyHome(),
            RewardPage(),
            ProfilePage(),
          ],
        ),
      ),
     bottomNavigationBar:  BottomNavigationWidget(/*controller: controller*/),
    );
  }
}
