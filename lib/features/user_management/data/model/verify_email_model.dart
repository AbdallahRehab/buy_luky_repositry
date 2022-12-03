import 'dart:convert';

import 'package:buy_luck/features/user_management/domain/entity/verify_email_entity.dart';

import '../../../../core/models/base_model.dart';

class VerifyEmailModel extends BaseModel<VerifyEmailEntity> {
  VerifyEmailModel({
    required this.message,
  });

  final String message;

  factory VerifyEmailModel.fromJson(String str) =>
      VerifyEmailModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VerifyEmailModel.fromMap(Map<String, dynamic> json) =>
      VerifyEmailModel(
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message == null ? null : message,
      };

  @override
  VerifyEmailEntity toEntity() {
    return VerifyEmailEntity(message: this.message);
  }
}
