import 'dart:convert';

import 'package:buy_luck/features/category/domain/entity/category_list_entity.dart';

import '../../../../core/models/base_model.dart';
import 'category_model.dart';

class CategoryListModel extends BaseModel<CategoryListEntity> {
  CategoryListModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final Data? data;
  final String message;
  final String statusCode;

  factory CategoryListModel.fromJson(String str) =>
      CategoryListModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryListModel.fromMap(Map<String, dynamic> json) =>
      CategoryListModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? null : data!.toMap(),
        "message": message == null ? null : message,
        "statusCode": statusCode == null ? null : statusCode,
      };

  @override
  CategoryListEntity toEntity() {
    return CategoryListEntity(
      categories:
          data?.categories?.map((category) => category.toEntity()).toList() ??
              [],
      message: message,
      statusCode: statusCode,
    );
  }
}

class Data {
  Data({
    required this.headers,
    required this.categories,
    required this.exception,
  });

  final Headers? headers;
  final List<CategoryModel>? categories;
  final dynamic exception;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        headers:
            json["headers"] == null ? null : Headers.fromMap(json["headers"]),
        categories: json["original"] == null
            ? null
            : List<CategoryModel>.from(
                json["original"].map((x) => CategoryModel.fromMap(x))),
        exception: json["exception"],
      );

  Map<String, dynamic> toMap() => {
        "headers": headers == null ? null : headers?.toMap(),
        "original": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toMap())),
        "exception": exception,
      };
}

class Headers {
  Headers();

  factory Headers.fromJson(String str) => Headers.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Headers.fromMap(Map<String, dynamic> json) => Headers();

  Map<String, dynamic> toMap() => {};
}
