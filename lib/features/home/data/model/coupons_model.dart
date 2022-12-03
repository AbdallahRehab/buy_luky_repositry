import '../../../../core/models/base_model.dart';
import '../../../product/data/model/product_model.dart';
import '../../../user_management/data/model/profile_model.dart';
import '../../domain/entity/coupons_entity.dart';

class CouponsModel extends BaseModel<CouponsEntity> {
  CouponsModel({
    required this.data,
    required this.statusCode,
  });

  List<DatumModel>? data;
  String statusCode;

  factory CouponsModel.fromJson(Map<String, dynamic> json) => CouponsModel(
        data: json["data"] == null
            ? null
            : List<DatumModel>.from(
                json["data"].map((x) => DatumModel.fromJson(x))),
        statusCode: json["statusCode"] == null ? null : json["statusCode"],
      );

  @override
  CouponsEntity toEntity() {
    return CouponsEntity(
      statusCode: this.statusCode,
      data: this.data?.map((e) => e.toEntity()).toList() ?? [],
    );
  }
}

class DatumModel extends BaseModel<DatumEntity> {
  DatumModel({
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
  // DateTime? createdAt;
  // DateTime? updatedAt;
  // ProfileModel? user;
  // ProductModel? product;

  factory DatumModel.fromJson(Map<String, dynamic> json) => DatumModel(
        id: json["id"] == null ? null : json["id"],
        // productId: json["product_id"] == null ? null : json["product_id"],
        // userId: json["user_id"] == null ? null : json["user_id"],
        orderId: json["order_id"] == null ? null : json["order_id"],
        user_winner_id:
            json["user_winner_id"] == null ? 0 : json["user_winner_id"],
        code: json["code"] == null ? null : json["code"],
        user_winner_name:
            json["user_winner_name"] == null ? null : json["user_winner_name"],
        code_winner: json["code_winner"] == null ? null : json["code_winner"],
        // createdAt: json["created_at"] == null
        //     ? null
        //     : DateTime.parse(json["created_at"]),
        // updatedAt: json["updated_at"] == null
        //     ? null
        //     : DateTime.parse(json["updated_at"]),
        // user: json["user"] == null ? null : ProfileModel.fromMap(json["user"]),
        // product: json["product"] == null
        //     ? null
        //     : ProductModel.fromMap(json["product"]),
      );

  @override
  DatumEntity toEntity() {
    return DatumEntity(
      id: this.id,
      code: this.code,
      // userId: this.userId,
      user_winner_id: this.user_winner_id,
      user_winner_name: this.user_winner_name,
      code_winner: this.code_winner,
      // user: this.user!.toEntity(),
      // productId: this.productId,
      // createdAt: this.createdAt!,
      // updatedAt: this.updatedAt!,
      orderId: this.orderId,
      // product: this.product!.toEntity(),
    );
  }
}
