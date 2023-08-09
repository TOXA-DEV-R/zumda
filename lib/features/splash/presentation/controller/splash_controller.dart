import 'package:get/get.dart';
import 'package:zumda/app/app_routes.dart';

class SplashController extends GetxController {
  navigateToHome() {
    Future.delayed(const Duration(seconds: 6), () {
      Get.offNamed(AppRoutes.SINGIN);
    });
  }
}
