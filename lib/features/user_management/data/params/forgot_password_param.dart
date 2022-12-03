import 'package:buy_luck/core/params/base_params.dart';

class ForgotPasswordParam extends BaseParams {
  final String email;

  ForgotPasswordParam(this.email);

  Map<String, dynamic> toMap() => {
        if (email != null) 'email': this.email,
      };
}
