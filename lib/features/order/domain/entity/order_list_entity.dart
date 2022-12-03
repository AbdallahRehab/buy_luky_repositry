import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/home/domain/entity/user_winner_entity.dart';

class OrderListEntity extends BaseEntity {
  OrderListEntity({
    required this.data,
    required this.statusCode,
  });

  final List<OrderDataEntity> data;
  final String statusCode;

  @override
  List<Object> get props => [
        this.data,
        this.statusCode,
      ];
}

class OrderDataEntity extends BaseEntity {
  OrderDataEntity({
    required this.order,
    required this.user,
    required this.product,
  });

  final OrderEntity order;
  final UserWinnerEntity user;
  final List<OrderProductEntity> product;

  @override
  List<Object> get props => [
        this.order,
        this.user,
        this.product,
      ];
}

class OrderEntity extends BaseEntity {
  OrderEntity({
    required this.id,
    required this.totalPrice,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String totalPrice;
  final int userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object> get props => [
        this.id,
        this.totalPrice,
        this.userId,
      ];
}

class OrderProductEntity extends BaseEntity {
  OrderProductEntity({
    required this.proInfo,
    required this.codes,
  });

  final OrderProInfoEntity proInfo;
  final List<OrderCodeEntity> codes;

  @override
  List<Object> get props => [
        this.proInfo,
        this.codes,
      ];
}

class OrderCodeEntity extends BaseEntity {
  OrderCodeEntity({
    required this.code,
  });

  final String code;

  @override
  List<Object> get props => [this.code];
}

class OrderProInfoEntity extends BaseEntity {
  OrderProInfoEntity({
    required this.id,
    required this.name,
    required this.category,
    required this.numberOfCoupons,
    required this.priceOfCoupons,
    required this.image,
    required this.time,
    required this.codeWinner,
    required this.userWinner,
    required this.boughtCoupons,
  });

  final int id;
  final String name;
  final OrderCategoryEntity category;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final String? image;
  final DateTime? time;
  final String codeWinner;
  final UserWinnerEntity? userWinner;
  final int boughtCoupons;

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.category,
        this.numberOfCoupons,
        this.priceOfCoupons,
        this.codeWinner,
        this.userWinner!,
        this.boughtCoupons,
      ];
}

class OrderCategoryEntity extends BaseEntity {
  OrderCategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final dynamic image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.image,
      ];
}
