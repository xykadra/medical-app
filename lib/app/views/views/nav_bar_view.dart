import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/homePage/views/home_page_view.dart';
import 'package:hackaton_test/app/modules/incomeMessage/views/income_message_view.dart';
import 'package:hackaton_test/app/modules/settings/views/settings_view.dart';

import 'package:hackaton_test/app/views/navctrl/controllers/nav_bar_controller.dart';

class NavBarView extends GetView {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NavBarController());
    return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: controller.tabIndex.value,
          children: const [
IncomeMessageView(),
            HomePageView(),
            SettingsView()

          ],
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          items: const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
              label: 'Home',
              // activeIcon: ImageIcon(
              //   AssetImage("assets/home_icon.png"),
              //   color: _activeColor,
              // ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message,
                  //color: _inactiveColor
              ),
              label: 'Dolazece Poruke',
              // activeIcon: ImageIcon(
              //   AssetImage("assets/calendar.png"),
              //   color: _activeColor,
              // ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings
                //color: _inactiveColor,
              ),
              label: 'Settings',
              // activeIcon: ImageIcon(
              //   AssetImage("assets/progress.png"),
              //   color: _activeColor,
              // ),
            ),

          ],
        ),
      ),
    );
  }
}
