import 'package:buy_luck/core/models/base_model.dart';
import 'package:buy_luck/features/cart/domain/entity/generate_payment_entity.dart';

class GeneratePaymentModel extends BaseModel<GeneratePaymentEntity> {
  String? data;
  String? statusCode;

  GeneratePaymentModel({this.data, this.statusCode});

  GeneratePaymentModel.fromMap(Map<String, dynamic> json) {
    if (json["data"] is String) this.data = json["data"];
    if (json["statusCode"] is String) this.statusCode = json["statusCode"];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["data"] = this.data;
    data["statusCode"] = this.statusCode;
    return data;
  }

  @override
  GeneratePaymentEntity toEntity() {
    return GeneratePaymentEntity(
      data: data ?? '',
      statusCode: statusCode,
    );
  }
}
