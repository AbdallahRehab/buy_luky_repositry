import 'dart:convert';

import 'package:buy_luck/features/category/data/model/category_model.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/product/data/model/product_model.dart';

import '../../../../core/models/base_model.dart';
import 'product_winner_model.dart';

class HomeInitModel extends BaseModel<HomeInitEntity> {
  HomeInitModel({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  final DataModel? data;
  final String message;
  final String statusCode;

  factory HomeInitModel.fromJson(String str) =>
      HomeInitModel.fromMap(json.decode(str));

  factory HomeInitModel.fromMap(Map<String, dynamic> json) => HomeInitModel(
        data: json["data"] == null ? null : DataModel.fromMap(json["data"]),
        message: json["message"] == null ? null : json["message"],
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  HomeInitEntity toEntity() {
    return HomeInitEntity(
      data: this.data!.toEntity(),
      message: message,
      statusCode: statusCode,
    );
  }
}

class DataModel extends BaseModel<DataEntity> {
  DataModel({
    required this.carousel,
    required this.category,
    required this.winner,
    required this.product,
    required this.productWithdrawal,
  });

  final List<CarouselModel>? carousel;
  final List<CategoryModel>? category;
  final List<ProductWinnerModel>? winner;
  final List<ProductModel>? product;
  final List<ProductModel>? productWithdrawal;

  factory DataModel.fromJson(String str) => DataModel.fromMap(json.decode(str));

  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
        carousel: json["carousel"] == null
            ? null
            : List<CarouselModel>.from(
                json["carousel"].map(
                  (x) => CarouselModel.fromMap(x),
                ),
              ),
        category: json["category"] == null
            ? null
            : List<CategoryModel>.from(
                json["category"].map((x) => CategoryModel.fromMap(x))),
        winner: json["winner"] == null
            ? null
            : List<ProductWinnerModel>.from(
                json["winner"].map(
                  (x) => ProductWinnerModel.fromMap(x),
                ),
              ),
        product: json["product"] == null
            ? null
            : List<ProductModel>.from(
                json["product"].map((x) => ProductModel.fromMap(x))),
          productWithdrawal: json["productWithdrawal"] == null
            ? null
            : List<ProductModel>.from(
                json["productWithdrawal"].map((x) => ProductModel.fromMap(x))),
      );

  @override
  DataEntity toEntity() {
    return DataEntity(
      carousel: this.carousel?.map((e) => e.toEntity()).toList() ?? [],
      category: this.category?.map((c) => c.toEntity()).toList() ?? [],
      winner: this.winner?.map((w) => w.toEntity()).toList() ?? [],
      product: this.product?.map((p) => p.toEntity()).toList() ?? [],
      productWithdrawal: this.productWithdrawal?.map((p) => p.toEntity()).toList() ?? [],
    );
  }
}

class CarouselModel extends BaseModel<CarouselEntity> {
  CarouselModel({
    required this.id,
    required this.image,
  });

  final int id;
  final String? image;

  factory CarouselModel.fromJson(String str) =>
      CarouselModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CarouselModel.fromMap(Map<String, dynamic> json) => CarouselModel(
        id: json["id"] == null ? null : json["id"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image,
      };

  @override
  CarouselEntity toEntity() {
    return CarouselEntity(
      id: id,
      image: image,
    );
  }
}
