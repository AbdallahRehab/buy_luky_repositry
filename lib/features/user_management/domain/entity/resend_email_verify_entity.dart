import 'package:buy_luck/core/entities/base_entity.dart';

class ResendEmailVerifyEntity extends BaseEntity {
  ResendEmailVerifyEntity({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [this.message];
}
