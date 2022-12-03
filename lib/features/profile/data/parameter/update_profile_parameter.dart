import 'package:buy_luck/core/params/base_params.dart';
import 'package:dio/dio.dart';

class UpdateProfileParameter extends BaseParams {
  final String? name;
  final String? image;
  // final String? email;
  final String? phone;

  UpdateProfileParameter({
    this.name,
    this.image,
    // this.email,
    this.phone,
    CancelToken? cancelToken,
  }) : super(cancelToken: cancelToken);

  Map<String, dynamic> toMap() => {
        if (this.name != null) 'name': this.name,
        if (this.phone != null) 'phone': this.phone,
        // if (this.email != null) 'email': this.email,
      };
}
