import 'package:buy_luck/core/entities/base_entity.dart';

class CategoryEntity extends BaseEntity {
  CategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object> get props => [
        this.id,
        this.name,
      ];
}
