import 'dart:convert';

import 'package:buy_luck/features/user_management/domain/entity/resend_email_verify_entity.dart';

import '../../../../core/models/base_model.dart';

class ResendEmailVerifyModel extends BaseModel<ResendEmailVerifyEntity> {
  ResendEmailVerifyModel({
    required this.message,
  });

  final String message;

  factory ResendEmailVerifyModel.fromJson(String str) =>
      ResendEmailVerifyModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResendEmailVerifyModel.fromMap(Map<String, dynamic> json) =>
      ResendEmailVerifyModel(
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message == null ? null : message,
      };

  @override
  ResendEmailVerifyEntity toEntity() {
    return ResendEmailVerifyEntity(message: this.message);
  }
}
