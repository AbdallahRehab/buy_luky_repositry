import 'package:buy_luck/core/entities/base_entity.dart';

import 'notification_entity.dart';

class NotificationListEntity extends BaseEntity {
  NotificationListEntity({
    required this.notifications,
    required this.message,
    required this.statusCode,
  });

  final List<NotificationEntity> notifications;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [
        this.notifications,
        this.message,
        this.statusCode,
      ];
}
