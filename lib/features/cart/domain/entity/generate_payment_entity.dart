import 'package:buy_luck/core/entities/base_entity.dart';

class GeneratePaymentEntity extends BaseEntity {
  final String data;
  final String? statusCode;

  GeneratePaymentEntity({required this.data, this.statusCode});

  @override
  List<Object?> get props => [this.data, this.statusCode];
}
