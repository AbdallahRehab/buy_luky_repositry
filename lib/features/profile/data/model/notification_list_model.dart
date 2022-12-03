import 'dart:convert';

import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';

import '../../../../core/models/base_model.dart';
import 'notification_model.dart';

class NotificationListModel extends BaseModel<NotificationListEntity> {
  NotificationListModel({
    required this.status,
    required this.message,
    required this.statusCode,
  });

  final List<NotificationModel>? status;
  final String message;
  final String statusCode;

  factory NotificationListModel.fromJson(String str) =>
      NotificationListModel.fromMap(json.decode(str));

  factory NotificationListModel.fromMap(Map<String, dynamic> json) =>
      NotificationListModel(
        status: json["status"] == null
            ? null
            : List<NotificationModel>.from(
                json["status"].map((x) => NotificationModel.fromMap(x))),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  NotificationListEntity toEntity() {
    return NotificationListEntity(
      notifications: this.status?.map((e) => e.toEntity()).toList() ?? [],
      message: this.message,
      statusCode: this.statusCode,
    );
  }
}
