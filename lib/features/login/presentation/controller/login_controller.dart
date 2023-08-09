import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zumda/app/app_routes.dart';

class SigninController extends GetxController {
  final formKey = GlobalKey<FormState>();

  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  submit() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print(emailController.text);
      print(passwordController.text);
      isLoading = true;
      print(isLoading);
      update();

      // Get.offNamed(AppRoutes.HOME);
    }
  }

  validatorPassword(String? input) {
    if (input == null) {
      return 'Неверные данные.';
    } else if (input.isEmpty) {
      return 'Неверные данные.';
    } else if (input.toString().trim().length <= 6) {
      return 'Неверные данные.';
    } else {
      return null;
    }
  }

  doSignInPage() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if (email.isEmpty || password.isEmpty) return;

    isLoading = true;

    Get.offNamed(AppRoutes.HOME);
    update();
  }

  responseSignIn() {
    isLoading = false;
    update();
  }
}
