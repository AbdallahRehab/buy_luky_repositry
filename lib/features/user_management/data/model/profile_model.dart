import 'dart:convert';

import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';

import '../../../../core/models/base_model.dart';

class ProfileModel extends BaseModel<ProfileEntity> {
  ProfileModel({
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
  final dynamic emailVerifiedAt;
  final dynamic phone;
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

  factory ProfileModel.fromJson(String str) =>
      ProfileModel.fromMap(json.decode(str));

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? '' : json["email"],
        emailVerifiedAt: json["email_verified_at"] == null ? '' :json["email_verified_at"],
        phone: json["phone"],
        image: json["image"],
        whatsapp: json["whatsapp"] ?? '',
        telegram: json["telegram"] ?? '',
        facebook: json["facebook"] ?? '',
        twitter: json["twitter"] ?? '',
        snapchat: json["snapchat"] ?? '',
        instagram: json["instagram"] ?? '',
        address: json["address"] ?? '',
        active: json["active"] == null ? null : json["active"],
        myMoney: json["my_money"] == null ? null : json["my_money"],
        lat: json["lat"] ?? '',
        lng: json["lng"] ?? '',
        isAdmin: json["is_admin"] == null ? null : json["is_admin"],
        acceptedNotifications: json["accepted_notifications"] == null
            ? null
            : json["accepted_notifications"],
        uid: json["uid"]?? '',
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  @override
  ProfileEntity toEntity() {
    return ProfileEntity(
      id: this.id,
      name: this.name,
      email: this.email,
      emailVerifiedAt: this.emailVerifiedAt,
      phone: this.phone,
      image: this.image,
      whatsapp: this.whatsapp,
      telegram: this.telegram,
      facebook: this.facebook,
      twitter: this.twitter,
      snapchat: this.snapchat,
      instagram: this.instagram,
      address: this.address,
      active: this.active,
      myMoney: this.myMoney,
      lat: this.lat,
      lng: this.lng,
      isAdmin: this.isAdmin,
      acceptedNotifications: this.acceptedNotifications,
      uid: this.uid,
      createdAt: this.createdAt ?? DateTime.now(),
      updatedAt: this.updatedAt ?? DateTime.now(),
    );
  }
}
