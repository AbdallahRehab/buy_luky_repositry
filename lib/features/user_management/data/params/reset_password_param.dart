import 'package:buy_luck/core/params/base_params.dart';

class ResetPasswordParam extends BaseParams {
  final String password, password_confirmation, email;

  ResetPasswordParam(this.password, this.password_confirmation, this.email);

  Map<String, dynamic> toMap() => {
        if (password != null) 'password': password,
        if (password_confirmation != null)
          'password_confirmation': password_confirmation,
        if (email != null) 'email': email,
      };
}
