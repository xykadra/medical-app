import 'package:get/get.dart';

import '../controllers/zatrazi_pregled_controller.dart';

class ZatraziPregledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ZatraziPregledController>(
      () => ZatraziPregledController(),
    );
  }
}
