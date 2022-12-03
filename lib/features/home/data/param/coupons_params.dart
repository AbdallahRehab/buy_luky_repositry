import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';

class CouponsParams extends BaseParams {
  final String productId;

  CouponsParams({required this.productId, cancelToken})
      : super(cancelToken: cancelToken);

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "product_id": productId == null ? null : productId,
      };
}
