import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';
import 'package:dio/dio.dart';

class SearchParam extends BaseParams {
  SearchParam({
    required this.name,
    CancelToken? cancelToken,
  }) : super(cancelToken: cancelToken);

  final String name;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        if (name != null) "name": name == null ? null : name,
      };
}
