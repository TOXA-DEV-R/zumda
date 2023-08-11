import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:zumda/application/provider/loginProvider.dart';
import 'package:zumda/domain/core/app/app_pages.dart';
import 'package:zumda/domain/core/app/app_themes.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => LoginProvider()))
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Zumda",
        theme: Appthemes.LIGHT_THEME,
        getPages: AppPages.getPages,
      ),
    );
  }
}
