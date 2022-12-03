import 'dart:convert';

import 'package:buy_luck/features/product/data/model/product_model.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';

import '../../../../core/models/base_model.dart';

class ProductListModel extends BaseModel<ProductListEntity> {
  ProductListModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final List<ProductModel>? data;
  final String message;
  final String statusCode;

  factory ProductListModel.fromJson(String str) =>
      ProductListModel.fromMap(json.decode(str));

  factory ProductListModel.fromMap(Map<String, dynamic> json) =>
      ProductListModel(
        data: json["data"] == null
            ? null
            : List<ProductModel>.from(
                json["data"].map((x) => ProductModel.fromMap(x))),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  ProductListEntity toEntity() {
    return ProductListEntity(
      data:
          this.data?.map((productModel) => productModel.toEntity()).toList() ??
              [],
      message: this.message,
      statusCode: this.statusCode,
    );
  }
}
