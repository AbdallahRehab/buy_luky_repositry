import 'dart:convert';

import 'package:buy_luck/core/entities/base_entity.dart';

import '../../../../core/models/base_model.dart';

class TokenResponse extends BaseModel {
  TokenResponse({
    required this.token,
    required this.message,
    required this.isVerfiy,
  });

  final String token;
  final String? message;
  final int isVerfiy;

  factory TokenResponse.fromJson(String str) =>
      TokenResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TokenResponse.fromMap(Map<String, dynamic> json) => TokenResponse(
        token: json["token"] == null ? null : json["token"],
        isVerfiy: json["isVerfiy"] == null ? null : json["isVerfiy"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toMap() => {
        "token": token == null ? null : token,
        "isVerfiy": isVerfiy == null ? null : isVerfiy,
        "message": message == null ? null : message,
      };

  @override
  BaseEntity toEntity() => throw UnimplementedError();
}
