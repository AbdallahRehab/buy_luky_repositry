import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/category/domain/entity/category_entity.dart';
import 'package:buy_luck/features/home/domain/entity/user_winner_entity.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';

class ProductEntity extends BaseEntity {
  ProductEntity({
    required this.id,
    required this.name,
    required this.about,
    this.code_winner,
    this.category,
    required this.numberOfCoupons,
    required this.priceOfCoupons,
    required this.image,
    required this.boughtCoupons,
    this.user_winner,
    required this.time,
    required this.productStatus,
    this.descriptionWinner,
  });

  final int id;
  final String name, about;
  final String? code_winner;
  final DateTime? time;
  final UserWinnerEntity? user_winner;
  final CategoryEntity? category;
  final int numberOfCoupons;
  final num priceOfCoupons;
  final String? image;
  final int boughtCoupons;
  final ProductStatus productStatus;
  final String? descriptionWinner;

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.about,
        this.numberOfCoupons,
        this.priceOfCoupons,
        this.boughtCoupons,
        this.productStatus,
      ];
}
