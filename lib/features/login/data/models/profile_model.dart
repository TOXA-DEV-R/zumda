import 'package:zumda/features/login/data/models/singin_model.dart';

class UserProfileModel {
  bool? status;
  String? message;
  SinginModel? user;
  String? token;

  UserProfileModel({this.status, this.message, this.user, this.token});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? SinginModel.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}
