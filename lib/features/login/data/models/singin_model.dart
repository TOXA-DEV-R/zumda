import 'package:equatable/equatable.dart';

class SinginModel {
  String? email;
  String? password;

  SinginModel({required this.email, required this.password});

  SinginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['email'] = email;
    data['password'] = password;

    return data;
  }
}

class TokenModel extends Equatable {
  bool? status;
  String? message;
  SinginModel? user;
  String? token;

  TokenModel({this.status, this.message, this.user, this.token});

  TokenModel.fromJson(Map<String, dynamic> json) {
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

  @override
  List<Object?> get props => [status, message, user, token];
}
