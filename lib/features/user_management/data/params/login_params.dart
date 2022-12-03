import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';

import '../../../../core/Common/app_config.dart';

class LoginParams extends BaseParams {
  final String phone;
  final String password;
  final String? fcm;

  LoginParams( {required this.fcm,required this.phone, required this.password, cancelToken})
      : super(cancelToken: cancelToken);

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "phone": phone == null ? null : phone,
        "password": password == null ? null : password,
        "fcm": fcm,
      };
}
