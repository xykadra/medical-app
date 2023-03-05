import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../homePage/views/home_page_view.dart';
import '../../incomeMessage/views/income_message_view.dart';
import '../../settings/views/settings_view.dart';
import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavbarController());
    return Scaffold(
      // appBar: AppBar(
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(10),
      //     child: Divider(
      //       thickness: 2,
      //       height: 0,
      //     ),
      //   ),
      // ),
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: const [IncomeMessageView(), HomePageView(), SettingsView()],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          iconSize: 30,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue[200],
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                //color: _inactiveColor
              ),
              label: '',
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings
                  //color: _inactiveColor,
                  ),
              label: '',
              activeIcon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
