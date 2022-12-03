// To parse this JSON data, do
//
//     final orderListModel = orderListModelFromMap(jsonString);

import 'dart:convert';

import 'package:buy_luck/features/home/data/model/user_winner_model.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';

import '../../../../core/models/base_model.dart';

class OrderListModel extends BaseModel<OrderListEntity> {
  OrderListModel({
    required this.data,
    required this.statusCode,
  });

  final List<OrderDataModel>? data;
  final String statusCode;

  factory OrderListModel.fromJson(String str) =>
      OrderListModel.fromMap(json.decode(str));

  factory OrderListModel.fromMap(Map<String, dynamic> json) => OrderListModel(
        data: json["data"] == null
            ? null
            : List<OrderDataModel>.from(
                json["data"].map(
                  (x) => OrderDataModel.fromMap(x),
                ),
              ),
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  OrderListEntity toEntity() {
    return OrderListEntity(
      data: data?.map((e) => e.toEntity()).toList() ?? [],
      statusCode: statusCode,
    );
  }
}

class OrderDataModel extends BaseModel<OrderDataEntity> {
  OrderDataModel({
    required this.order,
    required this.user,
    required this.product,
  });

  final OrderModel? order;
  final UserWinnerModel? user;
  final List<OrderProductModel>? product;

  factory OrderDataModel.fromJson(String str) =>
      OrderDataModel.fromMap(json.decode(str));

  factory OrderDataModel.fromMap(Map<String, dynamic> json) => OrderDataModel(
        order: json["order"] == null ? null : OrderModel.fromMap(json["order"]),
        user:
            json["user"] == null ? null : UserWinnerModel.fromMap(json["user"]),
        product: json["product"] == null
            ? null
            : json["product"] is Map
                ? Map.from(json["product"])
                    .map((k, v) => MapEntry<String, OrderProductModel>(
                        k, OrderProductModel.fromMap(v)))
                    .values
                    .toList()
                : List<OrderProductModel>.from(
                    json["product"].map(
                      (x) => OrderProductModel.fromMap(x),
                    ),
                  ),
      );

  @override
  OrderDataEntity toEntity() {
    return OrderDataEntity(
      order: order!.toEntity(),
      user: user!.toEntity(),
      product: product?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

class OrderModel extends BaseModel<OrderEntity> {
  OrderModel({
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

  factory OrderModel.fromJson(String str) =>
      OrderModel.fromMap(json.decode(str));

  factory OrderModel.fromMap(Map<String, dynamic> json) => OrderModel(
        id: json["id"] == null ? null : json["id"],
        totalPrice: json["total_price"] == null ? null : json["total_price"],
        userId: json["user_id"] == null ? null : json["user_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  OrderEntity toEntity() {
    return OrderEntity(
      id: id,
      totalPrice: totalPrice,
      userId: userId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

class OrderProductModel extends BaseModel<OrderProductEntity> {
  OrderProductModel({
    required this.proInfo,
    required this.codes,
  });

  final OrderProInfoModel? proInfo;
  final List<OrderCodeModel>? codes;

  factory OrderProductModel.fromJson(String str) =>
      OrderProductModel.fromMap(json.decode(str));

  factory OrderProductModel.fromMap(Map<String, dynamic> json) =>
      OrderProductModel(
        proInfo: json["pro_info"] == null
            ? null
            : OrderProInfoModel.fromMap(json["pro_info"]),
        codes: json["codes"] == null
            ? null
            : List<OrderCodeModel>.from(
                json["codes"].map((x) => OrderCodeModel.fromMap(x))),
      );

  @override
  OrderProductEntity toEntity() {
    return OrderProductEntity(
      proInfo: proInfo!.toEntity(),
      codes: codes?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

class OrderCodeModel extends BaseModel<OrderCodeEntity> {
  OrderCodeModel({
    required this.code,
  });

  final String code;

  factory OrderCodeModel.fromJson(String str) =>
      OrderCodeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderCodeModel.fromMap(Map<String, dynamic> json) => OrderCodeModel(
        code: json["code"] == null ? null : json["code"],
      );

  Map<String, dynamic> toMap() => {
        "code": code == null ? null : code,
      };

  @override
  OrderCodeEntity toEntity() {
    return OrderCodeEntity(code: code);
  }
}

class OrderProInfoModel extends BaseModel<OrderProInfoEntity> {
  OrderProInfoModel({
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
  final OrderCategoryModel? category;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final String? image;
  final DateTime? time;
  final String codeWinner;
  final UserWinnerModel? userWinner;
  final int boughtCoupons;

  factory OrderProInfoModel.fromJson(String str) =>
      OrderProInfoModel.fromMap(json.decode(str));

  factory OrderProInfoModel.fromMap(Map<String, dynamic> json) =>
      OrderProInfoModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null
            ? null
            : OrderCategoryModel.fromMap(json["category"]),
        numberOfCoupons: json["number_of_coupons"] == null
            ? null
            : json["number_of_coupons"],
        priceOfCoupons:
            json["price_of_coupons"] == null ? null : json["price_of_coupons"],
        image: json["image"],
        time: DateTime.tryParse(json["time"] ?? ""),
        codeWinner: json["code_winner"] == null? '': json["code_winner"],
        userWinner: json["user_winner"] == null
            ? null
            : UserWinnerModel.fromMap(
                json["user_winner"],
              ),
        boughtCoupons:
            json["bought_coupons"] == null ? null : json["bought_coupons"],
      );

  @override
  OrderProInfoEntity toEntity() {
    return OrderProInfoEntity(
      id: id,
      name: name,
      category: category!.toEntity(),
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      image: image,
      time: time,
      codeWinner: codeWinner,
      // userWinner: userWinner!.toEntity(),
      userWinner: null,
      boughtCoupons: boughtCoupons,
    );
  }
}

class OrderCategoryModel extends BaseModel<OrderCategoryEntity> {
  OrderCategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory OrderCategoryModel.fromJson(String str) =>
      OrderCategoryModel.fromMap(json.decode(str));

  factory OrderCategoryModel.fromMap(Map<String, dynamic> json) =>
      OrderCategoryModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  OrderCategoryEntity toEntity() {
    return OrderCategoryEntity(
      id: id,
      name: name,
      image: image,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
