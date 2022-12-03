import 'package:buy_luck/core/entities/base_entity.dart';

class UserWinnerEntity extends BaseEntity {
  UserWinnerEntity({
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

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
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
}
