import 'dart:convert';

import 'package:buy_luck/features/profile/domain/entity/notification_entity.dart';

import '../../../../core/models/base_model.dart';

class NotificationModel extends BaseModel<NotificationEntity> {
  NotificationModel({
    required this.id,
    required this.userId,
    required this.message,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int userId;
  final String message;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory NotificationModel.fromJson(String str) =>
      NotificationModel.fromMap(json.decode(str));

  factory NotificationModel.fromMap(Map<String, dynamic> json) =>
      NotificationModel(
        id: json["id"] == null ? null : json["id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        message: json["message"] == null ? null : json["message"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  NotificationEntity toEntity() {
    return NotificationEntity(
      id: this.id,
      userId: this.userId,
      message: this.message,
      createdAt: this.createdAt ?? DateTime.now(),
      updatedAt: this.updatedAt ?? DateTime.now(),
    );
  }
}
