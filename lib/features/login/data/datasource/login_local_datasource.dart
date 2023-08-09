import 'package:zumda/core/db_helper/db_helper.dart';
import 'package:zumda/features/login/data/models/profile_model.dart';
import 'package:zumda/features/login/data/models/singin_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginLocalDatasource {
  Future<TokenModel> getLoginData();
  Future<bool> setLoginData(TokenModel token);
  Future<UserProfileModel> getUserData();
  Future<bool> setUserData(UserProfileModel token);
}

class LoginLocalDatasourceImpl extends LoginLocalDatasource {
  final SharedPreferences prefs;
  final DbHelper db;

  LoginLocalDatasourceImpl({required this.prefs, required this.db});

  @override
  Future<TokenModel> getLoginData() {
    // TODO: implement getLoginData
    throw UnimplementedError();
  }

  @override
  Future<UserProfileModel> getUserData() {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<bool> setLoginData(TokenModel token) {
    // TODO: implement setLoginData
    throw UnimplementedError();
  }

  @override
  Future<bool> setUserData(UserProfileModel token) {
    // TODO: implement setUserData
    throw UnimplementedError();
  }
}
