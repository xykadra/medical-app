import 'package:get/get.dart';

import '../controllers/prijava_problema_controller.dart';

class PrijavaProblemaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrijavaProblemaController>(
      () => PrijavaProblemaController(),
    );
  }
}
