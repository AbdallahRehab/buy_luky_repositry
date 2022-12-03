import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/home/domain/entity/user_winner_entity.dart';

class WinnersListEntity extends BaseEntity {
  WinnersListEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<WinnerListDataEntity> data;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [
        this.data,
        this.message,
        this.statusCode,
      ];
}

class WinnerListDataEntity extends BaseEntity {
  WinnerListDataEntity({
    required this.name,
    required this.productId,
    required this.product,
    required this.codeWinner,
    required this.userWinner,
  });

  final String name;
  final int productId;
  final WinnerProductEntity product;
  final String codeWinner;
  final UserWinnerEntity userWinner;

  @override
  List<Object> get props => [
        this.name,
        this.productId,
        this.product,
        this.codeWinner,
        this.userWinner,
      ];
}

class WinnerProductEntity extends BaseEntity {
  WinnerProductEntity({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.about,
    required this.photos,
    required this.position,
    required this.image,
    required this.address,
    required this.codeWinner,
    required this.descriptionWinner,
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
  final String about;
  final dynamic photos;
  final dynamic position;
  final String? image;
  final dynamic address;
  final String codeWinner;
  final String descriptionWinner;
  final DateTime time;
  final int userWin;
  final int active;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final DateTime createdAt;
  final DateTime updatedAt;

  @override
  List<Object> get props => [
        this.id,
        this.categoryId,
        this.name,
        this.about,
        this.photos,
        this.position,
        this.address,
        this.codeWinner,
        this.descriptionWinner,
        this.time,
        this.userWin,
        this.active,
        this.numberOfCoupons,
        this.priceOfCoupons,
        this.createdAt,
        this.updatedAt,
      ];
}
