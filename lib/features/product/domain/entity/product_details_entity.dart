import 'package:buy_luck/core/entities/base_entity.dart';
import 'package:buy_luck/features/category/domain/entity/category_entity.dart';
import 'package:buy_luck/features/home/domain/entity/user_winner_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';

class ProductDetailsEntity extends BaseEntity {
  ProductDetailsEntity({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final PDetailsData data;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [
        this.data,
        this.message,
        this.statusCode,
      ];

  ProductEntity get toProductEntity {
    return this.data.toProductEntity;
  }
}

class PDetailsData extends BaseEntity {
  PDetailsData({
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
  final PDetailsCategory category;
  final int numberOfCoupons;
  final int priceOfCoupons;
  final String? image;
  final DateTime? time;
  final String? codeWinner;
  final PDetailsUserWinner? userWinner;
  final String? descriptionWinner;
  final int boughtCoupons;

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.about,
        this.category,
        this.numberOfCoupons,
        this.priceOfCoupons,
        this.boughtCoupons,
      ];

  ProductEntity get toProductEntity {
    return ProductEntity(
      id: id,
      name: name,
      about: about,
      code_winner: codeWinner,
      category: category.categoryEntity,
      numberOfCoupons: numberOfCoupons,
      priceOfCoupons: priceOfCoupons,
      image: image,
      boughtCoupons: boughtCoupons,
      user_winner: userWinner?.toUserWinner,
      time: time,
      productStatus: this.userWinner != null
          ? ProductStatus.Bought
          : this.time != null
              ? ProductStatus.Pending
              : ProductStatus.Init,
      descriptionWinner: descriptionWinner,
    );
  }
}

class PDetailsCategory extends BaseEntity {
  PDetailsCategory({
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

  @override
  List<Object> get props => [
        this.id,
        this.name,
      ];

  CategoryEntity get categoryEntity {
    return CategoryEntity(
      id: id,
      name: name,
      image: image,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

class PDetailsUserWinner extends BaseEntity {
  PDetailsUserWinner({
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

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.email,
        this.phone,
        this.whatsapp,
        this.telegram,
        this.facebook,
        this.twitter,
        this.snapchat,
        this.instagram,
        this.address,
        this.active,
        this.myMoney,
        this.lat,
        this.lng,
        this.isAdmin,
        this.acceptedNotifications,
        this.uid,
      ];

  UserWinnerEntity get toUserWinner {
    return UserWinnerEntity(
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
