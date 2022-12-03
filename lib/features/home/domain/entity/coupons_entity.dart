import 'package:buy_luck/core/entities/base_entity.dart';

import '../../../product/domain/entity/product_entity.dart';
import '../../../user_management/domain/entity/profile_entity.dart';



class CouponsEntity extends BaseEntity {
  CouponsEntity({
    required this.data,
    required this.statusCode,
  });

  List<DatumEntity> data;
  String statusCode;

  @override
  List<Object> get props => [this.data, this.statusCode];
}

class DatumEntity extends BaseEntity {
  DatumEntity({
    required this.id,
    // required this.productId,
    // required this.userId,
    required this.orderId,
    required this.code,
    // required this.createdAt,
    // required this.updatedAt,
    // required this.user,
    // required this.product,
    required this.user_winner_id,
    required this.user_winner_name,
    required this.code_winner,
  });

  int id;
  // int productId;
  // int userId;
  int orderId;
  int user_winner_id;
  String code;
  String user_winner_name;
  String code_winner;
  // DateTime createdAt;
  // DateTime updatedAt;
  // ProfileEntity user;
  // ProductEntity product;

  @override
  List<Object> get props => [
        this.id,
        // this.productId,
        // this.userId,
        this.orderId,
        this.code,
        // this.createdAt,
        // this.updatedAt,
        // this.user,
        // this.product,
        this.user_winner_id,
        this.user_winner_name,
        this.code_winner,
      ];
}
