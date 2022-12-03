import 'package:buy_luck/core/params/base_params.dart';

class PasswordVerifyEmailParam extends BaseParams {
  final String code, email;

  PasswordVerifyEmailParam(this.code, this.email);

  Map<String, dynamic> toMap() => {
        if (code != null) 'code': this.code,
        if (email != null) 'email': this.email,
      };
}
