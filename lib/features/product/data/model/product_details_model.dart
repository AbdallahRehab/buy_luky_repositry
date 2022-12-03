// To parse this JSON data, do
//
//     final productDetailsModel = productDetailsModelFromMap(jsonString);

import 'dart:convert';

import 'package:buy_luck/features/product/domain/entity/product_details_entity.dart';

import '../../../../core/models/base_model.dart';

class ProductDetailsModel extends BaseModel<ProductDetailsEntity> {
  ProductDetailsModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final PDetailsDataModel? data;
  final String message;
  final String statusCode;

  factory ProductDetailsModel.fromJson(String str) =>
      ProductDetailsModel.fromMap(json.decode(str));

  factory ProductDetailsModel.fromMap(Map<String, dynamic> json) =>
      ProductDetailsModel(
        data: json["data"] == null
            ? null
            : PDetailsDataModel.fromMap(json["data"]),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  ProductDetailsEntity toEntity() {
    return ProductDetailsEntity(
      data: data!.toEntity(),
      message: message,
      statusCode: statusCode,
    );
  }
}

class PDetailsDataModel extends BaseModel<PDetailsData> {
  PDetailsDataModel({
    required this.id,
    required this.name,
    required this.about,
    required this.category,
    required this.numberOfCoupons,
    required this.priceOfCoupons,
    required this.image,
    required this.time,
    required this.codeWinner,
    required this.userWinner,
    required this.descriptionWinner,
    required this.boughtCoupons,
  });

  final int id;
  final String name;
  final String about;
  final PDetailsCategoryModel? category;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final String? image;
  final DateTime? time;
  final String? codeWinner;
  final PDetailsUserWinnerModel? userWinner;
  final String? descriptionWinner;
  final int boughtCoupons;

  factory PDetailsDataModel.fromJson(String str) =>
      PDetailsDataModel.fromMap(json.decode(str));

  factory PDetailsDataModel.fromMap(Map<String, dynamic> json) {
    try {
      return PDetailsDataModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        about: json["about"] == null ? null : json["about"],
        category: json["category"] == null
            ? null
            : PDetailsCategoryModel.fromMap(json["category"]),
        numberOfCoupons: json["number_of_coupons"] == null
            ? null
            : json["number_of_coupons"],
        priceOfCoupons:
            json["price_of_coupons"] == null ? null : json["price_of_coupons"],
        image: json["image"] == null ? null : json["image"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        codeWinner: json["code_winner"] == null ? null : json["code_winner"],
        userWinner: json["user_winner"] == null
            ? null
            : PDetailsUserWinnerModel.fromMap(json["user_winner"]),
        descriptionWinner: json["description_winner"] == null
            ? null
            : json["description_winner"],
        boughtCoupons:
            json["bought_coupons"] == null ? null : json["bought_coupons"],
      );
    } catch (e, stc) {
      print(stc);
    }
    return PDetailsDataModel(
      id: json["id"] == null ? null : json["id"],
      name: json["name"] == null ? null : json["name"],
      about: json["about"] == null ? null : json["about"],
      category: json["category"] == null
          ? null
          : PDetailsCategoryModel.fromMap(json["category"]),
      numberOfCoupons:
          json["number_of_coupons"] == null ? null : json["number_of_coupons"],
      priceOfCoupons:
          json["price_of_coupons"] == null ? null : json["price_of_coupons"],
      image: json["image"] == null ? null : json["image"],
      time: json["time"] == null ? null : DateTime.parse(json["time"]),
      codeWinner: json["code_winner"] == null ? null : json["code_winner"],
      userWinner: json["user_winner"] == null
          ? null
          : PDetailsUserWinnerModel.fromMap(json["user_winner"]),
      descriptionWinner: json["description_winner"] == null
          ? null
          : json["description_winner"],
      boughtCoupons:
          json["bought_coupons"] == null ? null : json["bought_coupons"],
    );
  }

  @override
  PDetailsData toEntity() {
    return PDetailsData(
      id: id,
      name: name,
      about: about,
      category: category!.toEntity(),
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      image: image,
      time: time,
      codeWinner: codeWinner,
      userWinner: userWinner?.toEntity(),
      descriptionWinner: descriptionWinner,
      boughtCoupons: boughtCoupons,
    );
  }
}

class PDetailsCategoryModel extends BaseModel<PDetailsCategory> {
  PDetailsCategoryModel({
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

  factory PDetailsCategoryModel.fromJson(String str) =>
      PDetailsCategoryModel.fromMap(json.decode(str));

  factory PDetailsCategoryModel.fromMap(Map<String, dynamic> json) =>
      PDetailsCategoryModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  PDetailsCategory toEntity() {
    return PDetailsCategory(
      id: id,
      name: name,
      image: image,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

class PDetailsUserWinnerModel extends BaseModel<PDetailsUserWinner> {
  PDetailsUserWinnerModel({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.phone,
    required this.image,
    required this.whatsapp,
    required this.telegram,
    required this.facebook,
    required this.twitter,
    required this.snapchat,
    required this.instagram,
    required this.address,
    required this.active,
    required this.myMoney,
    required this.lat,
    required this.lng,
    required this.isAdmin,
    required this.acceptedNotifications,
    required this.uid,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String email;
  final DateTime? emailVerifiedAt;
  final String phone;
  final String? image;
  final dynamic whatsapp;
  final dynamic telegram;
  final dynamic facebook;
  final dynamic twitter;
  final dynamic snapchat;
  final dynamic instagram;
  final dynamic address;
  final int active;
  final int myMoney;
  final dynamic lat;
  final dynamic lng;
  final int isAdmin;
  final int acceptedNotifications;
  final dynamic uid;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory PDetailsUserWinnerModel.fromJson(String str) =>
      PDetailsUserWinnerModel.fromMap(json.decode(str));

  factory PDetailsUserWinnerModel.fromMap(Map<String, dynamic> json) =>
      PDetailsUserWinnerModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? "" : json["email"],
        emailVerifiedAt: json["email_verified_at"] == null
            ? null
            : DateTime.parse(json["email_verified_at"]),
        phone: json["phone"] == null ? null : json["phone"],
        image: json["image"] == null ? null : json["image"],
        whatsapp: json["whatsapp"],
        telegram: json["telegram"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        snapchat: json["snapchat"],
        instagram: json["instagram"],
        address: json["address"],
        active: json["active"] == null ? null : json["active"],
        myMoney: json["my_money"] == null ? null : json["my_money"],
        lat: json["lat"],
        lng: json["lng"],
        isAdmin: json["is_admin"] == null ? null : json["is_admin"],
        acceptedNotifications: json["accepted_notifications"] == null
            ? null
            : json["accepted_notifications"],
        uid: json["uid"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  PDetailsUserWinner toEntity() {
    return PDetailsUserWinner(
      id: id,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      phone: phone,
      image: image,
      whatsapp: whatsapp,
      telegram: telegram,
      facebook: facebook,
      twitter: twitter,
      snapchat: snapchat,
      instagram: instagram,
      address: address,
      active: active,
      myMoney: myMoney,
      lat: lat,
      lng: lng,
      isAdmin: isAdmin,
      acceptedNotifications: acceptedNotifications,
      uid: uid,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
