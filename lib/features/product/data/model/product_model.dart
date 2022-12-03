import 'dart:convert';

import 'package:buy_luck/features/category/data/model/category_model.dart';
import 'package:buy_luck/features/home/data/model/user_winner_model.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';

import '../../../../core/models/base_model.dart';

class ProductModel extends BaseModel<ProductEntity> {
  ProductModel({
    required this.id,
    required this.name,
    required this.about,
    required this.code_winner,
    required this.category,
    required this.numberOfCoupons,
    required this.priceOfCoupons,
    required this.image,
    required this.boughtCoupons,
    required this.user_winner,
    required this.time,
    required this.descriptionWinner,
  });

  final int? id;
  final String? name, about, code_winner;
  final CategoryModel? category;
  final int? numberOfCoupons;
  final num? priceOfCoupons;
  final String? image;
  final int? boughtCoupons;
  final UserWinnerModel? user_winner;
  final String? time;
  final String? descriptionWinner;

  factory ProductModel.fromJson(String str) =>
      ProductModel.fromMap(json.decode(str));

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        about: json["about"] == null ? null : json["about"],
        descriptionWinner: json["description_winner"] == null
            ? null
            : json["description_winner"],
        code_winner: json["code_winner"] == null ? null : json["code_winner"],
        category: json["category"] == null
            ? null
            : CategoryModel.fromMap(json["category"]),
        numberOfCoupons: json["number_of_coupons"] == null
            ? null
            : json["number_of_coupons"],
        priceOfCoupons:
            json["price_of_coupons"] == null ? null : json["price_of_coupons"],
        image: json["image"],
        boughtCoupons:
            json["bought_coupons"] == null ? null : json["bought_coupons"],
        time: json["time"] == null ? null : json["time"],
        user_winner: json["user_winner"] == null
            ? null
            : UserWinnerModel.fromMap(json["user_winner"]),
      );

  @override
  ProductEntity toEntity() {
    final couponsToBuy =
        (this.numberOfCoupons ?? 0) - (this.boughtCoupons ?? 0);

    ProductStatus productStatus = ProductStatus.Init;

    if (this.user_winner != null) {
      productStatus = ProductStatus.Bought;
    } else if (this.time != null) {
      productStatus = ProductStatus.Pending;
    } else if (couponsToBuy <= 0) {
      productStatus = ProductStatus.OutOfStock;
    }

    return ProductEntity(
      id: this.id ?? -1,
      name: this.name ?? '',
      category: this.category?.toEntity(),
      numberOfCoupons: this.numberOfCoupons ?? 0,
      priceOfCoupons: this.priceOfCoupons ?? -1,
      image: this.image ?? '',
      boughtCoupons: this.boughtCoupons ?? 0,
      about: this.about ?? '',
      code_winner: this.code_winner,
      user_winner: this.user_winner?.toEntity(),
      time: DateTime.tryParse(time ?? ""),
      productStatus: productStatus,
      descriptionWinner: descriptionWinner,
    );
  }
}
