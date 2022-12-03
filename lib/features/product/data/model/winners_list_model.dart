import 'dart:convert';

import 'package:buy_luck/features/home/data/model/user_winner_model.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';

import '../../../../core/models/base_model.dart';

class WinnersListModel extends BaseModel<WinnersListEntity> {
  WinnersListModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<WinnerDataModel>? data;
  final String message;
  final String statusCode;

  factory WinnersListModel.fromJson(String str) =>
      WinnersListModel.fromMap(json.decode(str));

  factory WinnersListModel.fromMap(Map<String, dynamic> json) =>
      WinnersListModel(
        data: json["data"] == null
            ? null
            : List<WinnerDataModel>.from(
                json["data"].map((x) => WinnerDataModel.fromMap(x))),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  WinnersListEntity toEntity() {
    return WinnersListEntity(
      data: data?.map((e) => e.toEntity()).toList() ?? [],
      message: message,
      statusCode: statusCode,
    );
  }
}

class WinnerDataModel extends BaseModel<WinnerListDataEntity> {
  WinnerDataModel({
    required this.name,
    required this.productId,
    required this.product,
    required this.codeWinner,
    required this.userWinner,
  });

  final String name;
  final int productId;
  final WinnerProductModel? product;
  final String codeWinner;
  final UserWinnerModel? userWinner;

  factory WinnerDataModel.fromJson(String str) =>
      WinnerDataModel.fromMap(json.decode(str));

  factory WinnerDataModel.fromMap(Map<String, dynamic> json) => WinnerDataModel(
        name: json["name"] == null ? null : json["name"],
        productId: json["product_id"] == null ? null : json["product_id"],
        product: json["product"] == null
            ? null
            : WinnerProductModel.fromMap(json["product"]),
        codeWinner: json["code_winner"] == null ? null : json["code_winner"],
        userWinner: json["user_winner"] == null
            ? null
            : UserWinnerModel.fromMap(json["user_winner"]),
      );

  @override
  WinnerListDataEntity toEntity() {
    return WinnerListDataEntity(
      name: name,
      productId: productId,
      product: product!.toEntity(),
      codeWinner: codeWinner,
      userWinner: userWinner!.toEntity(),
    );
  }
}

class WinnerProductModel extends BaseModel<WinnerProductEntity> {
  WinnerProductModel({
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
  final DateTime? time;
  final int userWin;
  final int active;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory WinnerProductModel.fromJson(String str) =>
      WinnerProductModel.fromMap(json.decode(str));

  factory WinnerProductModel.fromMap(Map<String, dynamic> json) =>
      WinnerProductModel(
        id: json["id"] == null ? null : json["id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        about: json["about"] == null ? null : json["about"],
        photos: json["photos"],
        position: json["position"],
        image: json["image"] == null ? null : json["image"],
        address: json["address"],
        codeWinner: json["code_winner"] == null ? null : json["code_winner"],
        descriptionWinner: json["description_winner"] == null
            ? ""
            : json["description_winner"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        userWin: json["user_win"] == null ? null : json["user_win"],
        active: json["active"] == null ? null : json["active"],
        numberOfCoupons: json["number_of_coupons"] == null
            ? null
            : json["number_of_coupons"],
        priceOfCoupons:
            json["price_of_coupons"] == null ? null : json["price_of_coupons"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  WinnerProductEntity toEntity() {
    return WinnerProductEntity(
      id: id,
      categoryId: categoryId,
      name: name,
      about: about,
      photos: photos,
      position: position,
      image: image,
      address: address,
      codeWinner: codeWinner,
      descriptionWinner: descriptionWinner,
      time: time ?? DateTime.now(),
      userWin: userWin,
      active: active,
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      createdAt: createdAt ?? DateTime.now(),
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}
