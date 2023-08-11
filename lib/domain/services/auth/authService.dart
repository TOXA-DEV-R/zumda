import 'package:dio/dio.dart';
import 'package:zumda/domain/core/constants/api.dart';
import 'package:zumda/domain/models/authModel.dart';

class AuthService {
  Future<dynamic> login(
      {required String email, required String password}) async {
    try {
      Response response = await Dio()
          .post(Api.api, data: {"email": email, "password": password});
      if (response.statusCode == 200) {
        print(response.statusCode);
        return AuthModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioException catch (e) {
      return e.message.toString();
    }
  }
}
