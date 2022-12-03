import 'package:buy_luck/core/params/base_params.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class AddToFavParam extends BaseParams {
  AddToFavParam({
    required this.productId,
    CancelToken? cancelToken,
  }) : super(cancelToken: cancelToken);

  final int productId;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "product_id": productId,
      };
}
