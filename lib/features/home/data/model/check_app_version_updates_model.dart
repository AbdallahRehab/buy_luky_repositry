import 'dart:convert';

import 'package:buy_luck/features/home/domain/entity/check_app_version_updates_entity.dart';

import '../../../../core/models/base_model.dart';

class CheckAppVersionUpdatesMainModel
    extends BaseModel<CheckAppVersionUpdatesEntity> {
  CheckAppVersionUpdatesMainModel({
    this.data,
    this.succeed,
    this.message,
  });

  final CheckAppVersionUpdatesModel? data;
  final bool? succeed;
  final String? message;

  factory CheckAppVersionUpdatesMainModel.fromJson(String str) =>
      CheckAppVersionUpdatesMainModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CheckAppVersionUpdatesMainModel.fromMap(Map<String, dynamic> json) =>
      CheckAppVersionUpdatesMainModel(
        data: CheckAppVersionUpdatesModel.fromMap(json["data"]),
        succeed: json["succeed"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "succeed": succeed,
        "message": message,
      };

  @override
  CheckAppVersionUpdatesEntity toEntity() {
    return data!.toEntity();
  }
}

class CheckAppVersionUpdatesModel
    extends BaseModel<CheckAppVersionUpdatesEntity> {
  CheckAppVersionUpdatesModel({
    required this.lastVersion,
    required this.appLink,
  });

  final int lastVersion;
  final String appLink;

  factory CheckAppVersionUpdatesModel.fromJson(String str) =>
      CheckAppVersionUpdatesModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CheckAppVersionUpdatesModel.fromMap(Map<String, dynamic> json) =>
      CheckAppVersionUpdatesModel(
        lastVersion: json["lastVersion"] == null ? null : json["lastVersion"],
        appLink: json["appLink"] == null ? null : json["appLink"],
      );

  Map<String, dynamic> toMap() => {
        "lastVersion": lastVersion == null ? null : lastVersion,
        "appLink": appLink == null ? null : appLink,
      };

  @override
  CheckAppVersionUpdatesEntity toEntity() => CheckAppVersionUpdatesEntity(
        appLink: this.appLink,
        lastVersion: this.lastVersion,
      );
}
