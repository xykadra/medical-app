import 'package:get/get.dart';

import '../controllers/income_message_controller.dart';

class IncomeMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomeMessageController>(
      () => IncomeMessageController(),
    );
  }
}
