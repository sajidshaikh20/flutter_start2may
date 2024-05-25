
import '../../utils/exports.dart';

class DashboardController extends GetxController {
  final currentIndex = 0.obs;

  var selectedIndex = 0.obs;

  List<BottomNavigationBarItem> navigationItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/svg/ic_bottom_inactive_home.svg',
      ),
      label: "Home",
      activeIcon: SvgPicture.asset(
        'assets/svg/ic_bottom_active_home.svg',
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/ic_bottom_inactive_reward.svg'),
      label: "Reward",
      activeIcon: SvgPicture.asset(
        'assets/svg/ic_bottom_inactive_reward.svg',
        colorFilter: const ColorFilter.mode(Colors.deepOrange, BlendMode.srcIn),
      ),
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/svg/ic_bottom_inactive_profiles.svg'),
        label: "Profile",
        activeIcon: SvgPicture.asset(
            'assets/svg/ic_bottom_inactive_profiles.svg',
            colorFilter:
                const ColorFilter.mode(Colors.deepOrange, BlendMode.srcIn))),
  ];

  onItemClick(int tappedIndex) {
    //  String path = '/';
    switch (tappedIndex) {
      case 0:
        {
          // path = AppPaths.home;
          selectedIndex.value = 0;
          print(tappedIndex);
          break;
        }
      case 1:
        {
          // path = AppPaths.rewards;
          selectedIndex.value = 1;
          print(tappedIndex);
          break;
        }
      case 2:
        {
          //path = AppPaths.profile;
          selectedIndex.value = 2;
          print(tappedIndex);
          break;
        }
      default:
        {
          //path = AppPaths.dashboard;
          selectedIndex.value = 0;
          break;
        }
    }
  }
}
