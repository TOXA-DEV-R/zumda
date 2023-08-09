import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zumda/app/app_images.dart';
import 'package:zumda/features/splash/presentation/controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  final _controller = Get.put(SplashController());

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    widget._controller.navigateToHome();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            AppImages.SPLASH_LOGO,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}
