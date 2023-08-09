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
      isLoading = true;
      update();

      Future.delayed(const Duration(seconds: 3), () {
        Get.offNamed(AppRoutes.HOME);

        isLoading = false;
        update();
      });
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
}
