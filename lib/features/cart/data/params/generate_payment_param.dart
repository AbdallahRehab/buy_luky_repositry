import 'package:buy_luck/core/params/base_params.dart';

class GeneratePaymentParam extends BaseParams {
  num userId;
  num value;

  GeneratePaymentParam({required this.userId, required this.value});

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'value': value,
      };
}
