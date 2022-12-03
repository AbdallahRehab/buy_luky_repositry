import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';

class ChargeBodyParam extends BaseParams {
  ChargeBodyParam({
    required this.amount,
  });

  final num amount;

  factory ChargeBodyParam.fromJson(String str) =>
      ChargeBodyParam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChargeBodyParam.fromMap(Map<String, dynamic> json) => ChargeBodyParam(
        amount: json["amount"] == null ? null : json["amount"],
      );

  Map<String, dynamic> toMap() => {
        "amount": amount == null ? null : amount,
      };
}
