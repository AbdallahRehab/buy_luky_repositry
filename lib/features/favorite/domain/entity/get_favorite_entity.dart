import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';

class GetFavoriteEntity extends BaseEntity {
  GetFavoriteEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<ProductEntity> data;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [
        this.data,
        this.message,
        this.statusCode,
      ];
}

/*class FavoriteDataEntity extends BaseEntity {
  FavoriteDataEntity({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.about,
    required this.position,
    required this.image,
    required this.address,
    required this.codeWinner,
    required this.time,
    required this.userWin,
    required this.active,
    required this.numberOfCoupons,
    required this.priceOfCoupons,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int categoryId;
  final String name;
  final dynamic about;
  final dynamic position;
  final dynamic image;
  final dynamic address;
  final String codeWinner;
  final dynamic time;
  final int userWin;
  final int active;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProductEntity get toProductEntity {
    return ProductEntity(
      id: id,
      name: name,
      about: about,
      code_winner: codeWinner,
      category: null,
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      image: image,
      boughtCoupons: null,
      user_winner: null,
    );
  }

  @override
  List<Object> get props => [
        this.id,
        this.categoryId,
        this.name,
        this.about,
        this.position,
        this.image,
        this.address,
        this.codeWinner,
        this.time,
        this.userWin,
        this.active,
        this.numberOfCoupons,
        this.priceOfCoupons,
        this.createdAt,
        this.updatedAt,
      ];
}*/
