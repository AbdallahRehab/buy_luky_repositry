import 'package:buy_luck/core/entities/base_entity.dart';

class ProfileEntity extends BaseEntity {
  ProfileEntity({
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
  num myMoney;
  final dynamic lat;
  final dynamic lng;
  final int isAdmin;
  final int acceptedNotifications;
  final dynamic uid;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProfileEntity copyWith({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    dynamic phone,
    String? image,
    dynamic whatsapp,
    dynamic telegram,
    dynamic facebook,
    dynamic twitter,
    dynamic snapchat,
    dynamic instagram,
    dynamic address,
    int? active,
    int? myMoney,
    dynamic lat,
    dynamic lng,
    int? isAdmin,
    int? acceptedNotifications,
    dynamic uid,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ProfileEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      phone: phone ?? this.phone,
      image: image ?? this.image,
      whatsapp: whatsapp ?? this.whatsapp,
      telegram: telegram ?? this.telegram,
      facebook: facebook ?? this.facebook,
      twitter: twitter ?? this.twitter,
      snapchat: snapchat ?? this.snapchat,
      instagram: instagram ?? this.instagram,
      address: address ?? this.address,
      active: active ?? this.active,
      myMoney: myMoney ?? this.myMoney,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      isAdmin: isAdmin ?? this.isAdmin,
      acceptedNotifications:
          acceptedNotifications ?? this.acceptedNotifications,
      uid: uid ?? this.uid,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

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
        this.createdAt,
        this.updatedAt,
      ];
}
