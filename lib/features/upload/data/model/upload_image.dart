import 'dart:convert';

import 'package:buy_luck/features/upload/domain/entity/entity.dart';

import '../../../../core/models/base_model.dart';

class UploadModel extends BaseModel<UploadEntity> {
  UploadModel({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;

  factory UploadModel.fromJson(String str) =>
      UploadModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UploadModel.fromMap(Map<String, dynamic> json) => UploadModel(
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toMap() => {
        "succeed": code == null ? null : code,
        "message": message == null ? null : message,
      };

  @override
  UploadEntity toEntity() => UploadEntity(
        data: null,
      );
}

class UploadModelData extends BaseModel<UploadEntityData> {
  UploadModelData({
    required this.url,
  });

  final String url;

  factory UploadModelData.fromJson(String str) =>
      UploadModelData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UploadModelData.fromMap(Map<String, dynamic> json) => UploadModelData(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
      };

  @override
  UploadEntityData toEntity() => UploadEntityData(url: this.url);
}
