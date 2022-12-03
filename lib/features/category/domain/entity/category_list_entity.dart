import 'package:buy_luck/core/entities/base_entity.dart';

import 'category_entity.dart';

class CategoryListEntity extends BaseEntity {
  CategoryListEntity({
    required this.categories,
    required this.message,
    required this.statusCode,
  });

  final List<CategoryEntity> categories;
  final String message;
  final String statusCode;

  @override
  List<Object> get props => [this.categories, this.message, this.statusCode];
}
