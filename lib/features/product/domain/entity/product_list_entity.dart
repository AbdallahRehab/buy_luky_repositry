import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';

class ProductListEntity extends BaseEntity {
  ProductListEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<ProductEntity> data;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [this.data, this.message, this.statusCode];
}
