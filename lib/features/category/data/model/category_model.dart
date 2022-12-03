import 'dart:convert';

import 'package:buy_luck/features/category/domain/entity/category_entity.dart';

import '../../../../core/models/base_model.dart';

class CategoryModel extends BaseModel<CategoryEntity> {
  CategoryModel({
    required this.id,
    required this.name,
    this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory CategoryModel.fromJson(String str) =>
      CategoryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "image": image,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
      };

  @override
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: this.id,
      name: this.name,
      image: this.image,
      createdAt: this.createdAt,
      updatedAt: this.updatedAt,
    );
  }
}
