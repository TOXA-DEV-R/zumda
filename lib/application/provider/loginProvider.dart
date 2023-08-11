import 'package:flutter/material.dart';
import 'package:zumda/domain/models/authModel.dart';
import 'package:zumda/domain/services/auth/authService.dart';
import 'package:zumda/presentation/ui/home_page.dart';

import '../../domain/db/authDbService.dart';

class LoginProvider extends ChangeNotifier {
  AuthService authService = AuthService();
  AuthDB authDB = AuthDB();

  // Inputs
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;
  String error = '';

  Future<void> login(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    dynamic response = await authService.login(
        email: emailController.text, password: passwordController.text);
    if (response is AuthModel) {
      isLoading = false;
      await authDB.writeToDB(response.token.toString());
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
        (route) => false,
      );
      notifyListeners();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(response)));
      isLoading = false;
      error = response;
      notifyListeners();
    }
  }
}
