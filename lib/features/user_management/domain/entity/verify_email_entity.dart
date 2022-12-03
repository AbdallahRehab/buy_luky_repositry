import 'package:buy_luck/core/entities/base_entity.dart';

class VerifyEmailEntity extends BaseEntity {
  VerifyEmailEntity({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [this.message];
}
