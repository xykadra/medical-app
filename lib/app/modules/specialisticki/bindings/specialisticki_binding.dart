import 'package:get/get.dart';

import '../controllers/specialisticki_controller.dart';

class SpecialistickiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialistickiController>(
      () => SpecialistickiController(),
    );
  }
}
