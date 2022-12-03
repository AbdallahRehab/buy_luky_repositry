import 'package:buy_luck/core/params/base_params.dart';

class VerifyEmailParam extends BaseParams {
  final String code;

  VerifyEmailParam(this.code);

  Map<String, dynamic> toMap() => {
        if (this.code != null) 'code': this.code,
      };
}
