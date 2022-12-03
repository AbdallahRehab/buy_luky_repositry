import '../../../../core/models/base_model.dart';
import '../../domain/entity/privacy_entity.dart';

class PrivacyModel extends BaseModel<PrivacyEntity> {
  PrivacyModel({
    this.data,
    this.message,
    this.statusCode,
  });

  DataModel? data;
  String? message;
  String? statusCode;

  factory PrivacyModel.fromJson(Map<String, dynamic> json) => PrivacyModel(
        data: json["data"] == null ? null : DataModel.fromJson(json["data"]),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
        "message": message == null ? null : message,
        "statusCode": statusCode == null ? null : statusCode,
      };

  @override
  PrivacyEntity toEntity() {
    return PrivacyEntity(
        statusCode: this.statusCode!,
        data: this.data!.toEntity(),
        message: this.message!);
  }
}

class DataModel extends BaseModel<DataEntity> {
  DataModel({
    this.title,
    this.description,
  });

  String? title;
  String? description;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
      };

  @override
  DataEntity toEntity() {
    return DataEntity(
      title: this.title!,
      description: this.description!,
    );
  }
}
