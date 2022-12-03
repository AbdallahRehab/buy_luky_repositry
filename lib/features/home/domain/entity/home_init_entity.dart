import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/category/domain/entity/category_entity.dart';
import 'package:buy_luck/features/home/domain/entity/product_winner_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';

class HomeInitEntity extends BaseEntity {
  HomeInitEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final DataEntity data;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [this.data, this.message, this.statusCode];
}

class DataEntity extends BaseEntity {
  DataEntity({
    required this.carousel,
    required this.category,
    required this.winner,
    required this.product,
    required this.productWithdrawal,
  });

  final List<CarouselEntity> carousel;
  final List<CategoryEntity> category;
  final List<ProductWinnerEntity> winner;
  final List<ProductEntity> product;
  final List<ProductEntity> productWithdrawal;

  @override
  List<Object> get props => [
        this.carousel,
        this.category,
        this.winner,
        this.product,
        this.productWithdrawal,
      ];
}

class CarouselEntity extends BaseEntity {
  CarouselEntity({
    required this.id,
    required this.image,
  });

  final int id;
  final String? image;

  @override
  List<Object> get props => [
        this.id,
      ];
}
