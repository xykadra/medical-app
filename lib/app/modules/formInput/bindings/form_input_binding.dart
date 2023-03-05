import 'package:get/get.dart';

import '../controllers/form_input_controller.dart';

class FormInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormInputController>(
      () => FormInputController(),
    );
  }
}
