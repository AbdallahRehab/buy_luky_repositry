import 'package:buy_luck/core/params/base_params.dart';

enum LoginType {
  facebook,
  google,
}

class SocialLoginParam extends BaseParams {
  String token;
  final LoginType loginType;

  SocialLoginParam({required this.token, required this.loginType});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (this.loginType == LoginType.facebook) {
      map["access_token"] = token;
    } else {
      map["id_token"] = token;
    }
    return map;
  }
}
