import 'package:get/get.dart';
import 'package:hackaton_test/app/modules/homePage/controllers/home_page_controller.dart';
import 'package:hackaton_test/app/modules/incomeMessage/controllers/income_message_controller.dart';
import 'package:hackaton_test/app/modules/settings/controllers/settings_controller.dart';
import 'package:hackaton_test/app/modules/settings/views/settings_view.dart';

import '../controllers/navbar_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(
      () => NavbarController(),
    );
    Get.lazyPut<HomePageController>(
          () => HomePageController(),
    );
    Get.lazyPut<IncomeMessageController>(() => IncomeMessageController());

    Get.lazyPut<SettingsController>(
          () => SettingsController(),
    );

  }
}
