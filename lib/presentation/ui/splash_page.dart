import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:zumda/domain/core/app/app_images.dart';
import 'package:zumda/presentation/ui/authPage.dart';

import '../../domain/db/authDbService.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => checkAccesToken(context));
  }

  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;

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

void checkAccesToken(BuildContext context) async {
  await AuthDB().openbox();

  String? accesToken = await Hive.box("authBox").get("access_token");
  if (accesToken != null && accesToken.isNotEmpty) {
    //Home
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
        (route) => false);
  } else {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => SigInPage()), (route) => false);
  }
}
