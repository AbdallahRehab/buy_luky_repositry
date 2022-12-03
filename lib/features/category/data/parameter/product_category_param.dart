import 'package:buy_luck/core/params/base_params.dart';

class ProductsCategoryParam extends BaseParams {
  final int id;

  ProductsCategoryParam(this.id);

  Map<String, dynamic> toMap() => {
        if (id != null) 'id': this.id,
      };
}
