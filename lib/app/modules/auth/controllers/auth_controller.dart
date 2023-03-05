import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController

  final count = 0.obs;
  @override
  void onInit() {

    passwordController = TextEditingController();
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();

  }

  void increment() => count.value++;

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController passwordController, emailController;

  var email = '';
  var password = '';

  String? validateID(String value) {
    if (value.isEmpty) {
      return "Please enter email";
    }
    if (!GetUtils.isNumericOnly(value)) {
      return 'Type only number';
    }

    return null;
  }




}
