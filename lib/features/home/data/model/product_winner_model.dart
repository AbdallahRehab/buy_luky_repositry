import 'dart:convert';

import 'package:buy_luck/features/home/domain/entity/product_winner_entity.dart';
import 'package:buy_luck/features/product/data/model/product_model.dart';

import '../../../../core/models/base_model.dart';
import 'user_winner_model.dart';

class ProductWinnerModel extends BaseModel<ProductWinnerEntity> {
  ProductWinnerModel({
    required this.name,
    required this.codeWinner,
    required this.userWinner,
    required this.productId,
    required this.product,
  });

  final String name;
  final String codeWinner;
  final int productId;
  final UserWinnerModel? userWinner;
  final ProductModel? product;

  factory ProductWinnerModel.fromJson(String str) =>
      ProductWinnerModel.fromMap(json.decode(str));

  factory ProductWinnerModel.fromMap(Map<String, dynamic> json) =>
      ProductWinnerModel(
        name: json["name"] == null ? null : json["name"],
        codeWinner: json["code_winner"] == null ? null : json["code_winner"],
        productId: json["product_id"] == null ? null : json["product_id"],
        userWinner: json["user_winner"] == null
            ? null
            : UserWinnerModel.fromMap(json["user_winner"]),
        product: json["product"] == null
            ? null
            : ProductModel.fromMap(json["product"]),
      );

  @override
  ProductWinnerEntity toEntity() {
    return ProductWinnerEntity(
      name: this.name,
      codeWinner: this.codeWinner,
      userWinner: this.userWinner?.toEntity(),
      productId: productId,
      product: this.product!.toEntity(),
    );
  }
}
