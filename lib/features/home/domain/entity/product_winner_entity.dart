import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/home/domain/entity/user_winner_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';

class ProductWinnerEntity extends BaseEntity {
  ProductWinnerEntity({
    required this.name,
    required this.codeWinner,
    required this.userWinner,
    required this.productId,
    required this.product,
  });

  final String name;
  final String codeWinner;
  final int productId;
  final UserWinnerEntity? userWinner;
  final ProductEntity product;

  @override
  List<Object> get props => [
        this.name,
        this.codeWinner,
        this.productId,
        this.product,
      ];
}
