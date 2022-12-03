import 'package:buy_luck/core/entities/base_entity.dart';

class NotificationEntity extends BaseEntity {
  NotificationEntity({
    required this.id,
    required this.userId,
    required this.message,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int userId;
  final String message;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object> get props => [
        this.id,
        this.userId,
        this.message,
        this.createdAt,
        this.updatedAt,
      ];
}
