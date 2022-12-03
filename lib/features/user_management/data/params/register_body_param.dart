import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';

import '../../../../core/Common/app_config.dart';

class RegisterBodyParam extends BaseParams {
  RegisterBodyParam({
    required this.name,
    required this.phone,
    required this.password,
    required this.fcm,
    required this.passwordConfirmation, required this.email,
  });

  final String name;
  final String phone;
  final String email;
  final String password;
  final String? fcm;
  final String passwordConfirmation;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        if (name != null) "name": name == null ? null : name,
        if (phone != null) "phone": phone == null ? null : phone,
        if (email != null) "email": email == null ? null : email,
        "fcm": fcm,
        if (password != null) "password": password == null ? null : password,
        if (passwordConfirmation != null)
          "password_confirmation":
              passwordConfirmation == null ? null : passwordConfirmation,
      };
}
