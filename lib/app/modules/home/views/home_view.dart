import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:virtual_assistant/app/data/Constants.dart';

import 'package:virtual_assistant/app/modules/RegisterUser/views/register_user_view.dart';
import 'package:virtual_assistant/app/modules/auth/LoginScreen/views/login_screen_view.dart';

import '../../DailyTracker/views/daily_tracker_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _controller = PersistentTabController(initialIndex: 0);
  final RxInt selected = 1.obs;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/RFIDSignal.png',
          color: (selected.value == 1) ? primaryColor : Colors.black,
        ),
        activeColorPrimary:
            (drawerClicked.value == false) ? primaryColor : Colors.transparent,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/TodoList.png',
          color: (selected.value == 2) ? primaryColor : Colors.black,
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/PersonCalendar.png',
          color: (selected.value == 3) ? primaryColor : Colors.black,
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icons/RequestMoney.png',
          color: (selected.value == 4) ? primaryColor : Colors.black,
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      DailyTrackerView(),
      RegisterUserView(),
      LoginScreenView(),
      RegisterUserView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('HomeView'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          bottomNavigationBar: _bottomNavigationBar(context)),
    );
  }

  _bottomNavigationBar(BuildContext context) {
    return Obx(
      () => PersistentTabView(
        context,
        controller: _controller,
        items: _navBarsItems(),

        navBarStyle: NavBarStyle.style3,
        onItemSelected: (value) {
          switch (value) {
            case 0:
              selected.value = 1;
              print(selected);
              print("1 selected");
              break;
            case 1:
              selected.value = 2;
              print(" 2 selected");
              break;
            case 2:
              selected.value = 3;
              print(" 3 selected");
              break;
            case 3:
              selected.value = 4;
              print("4  selected");
          }
        },
        screens:
            _buildScreens(), // Choose the nav bar style with this property.
      ),
    );
  }
}
