import 'dart:convert';

import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/product/data/model/product_model.dart';

import '../../../../core/models/base_model.dart';

class GetFavoriteModel extends BaseModel<GetFavoriteEntity> {
  GetFavoriteModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<ProductModel>? data;
  final String message;
  final String statusCode;

  factory GetFavoriteModel.fromJson(String str) =>
      GetFavoriteModel.fromMap(json.decode(str));

  factory GetFavoriteModel.fromMap(Map<String, dynamic> json) =>
      GetFavoriteModel(
        data: json["data"] == null
            ? null
            : List<ProductModel>.from(
                json["data"].map((x) => ProductModel.fromMap(x))),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  GetFavoriteEntity toEntity() {
    return GetFavoriteEntity(
      data: data?.map((e) => e.toEntity()).toList() ?? [],
      message: message,
      statusCode: statusCode,
    );
  }
}

/*class FavoriteDataModel extends BaseModel<FavoriteDataEntity> {
  FavoriteDataModel({
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

  factory FavoriteDataModel.fromJson(String str) =>
      FavoriteDataModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FavoriteDataModel.fromMap(Map<String, dynamic> json) =>
      FavoriteDataModel(
        id: json["id"] == null ? null : json["id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        about: json["about"],
        position: json["position"],
        image: json["image"],
        address: json["address"],
        codeWinner: json["code_winner"] == null ? null : json["code_winner"],
        time: json["time"],
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

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "about": about,
        "position": position,
        "image": image,
        "address": address,
        "code_winner": codeWinner == null ? null : codeWinner,
        "time": time,
        "user_win": userWin == null ? null : userWin,
        "active": active == null ? null : active,
        "number_of_coupons": numberOfCoupons == null ? null : numberOfCoupons,
        "price_of_coupons": priceOfCoupons == null ? null : priceOfCoupons,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };

  @override
  FavoriteDataEntity toEntity() {
    return FavoriteDataEntity(
      id: id,
      categoryId: categoryId,
      name: name,
      about: about,
      position: position,
      image: image,
      address: address,
      codeWinner: codeWinner,
      time: time,
      userWin: userWin,
      active: active,
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}*/
