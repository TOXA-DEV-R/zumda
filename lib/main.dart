import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zumda/app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(const App());
}
