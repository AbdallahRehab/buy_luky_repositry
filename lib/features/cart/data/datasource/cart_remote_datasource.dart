import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/features/cart/data/datasource/icart_remote_datasource.dart';
import 'package:buy_luck/features/cart/data/model/generate_payment_model.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';

@Injectable(as: ICartRemoteDataSource)
class CartRemoteDataSource extends ICartRemoteDataSource {
  @override
  Future<Either<AppErrors, EmptyResponse>> charge(
      {required ChargeBodyParam body}) {
    return request<EmptyResponse>(
      converter: (json) => EmptyResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_CHARGE,
      cancelToken: body.cancelToken,
      body: body.toMap(),
      isFormData: true,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, EmptyResponse>> checkout(
      {required CheckoutBodyParam body}) {
    return request<EmptyResponse>(
      converter: (json) => EmptyResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_CHECKOUT,
      body: body.toMap(),
      isFormData: true,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, GeneratePaymentModel>> generatePayment(
      {required GeneratePaymentParam param}) {
    return request<GeneratePaymentModel>(
        converter: (json) => GeneratePaymentModel.fromMap(json),
        method: HttpMethod.POST,
        url: apiGeneratePayment,
        queryParameters: param.toMap(),
        withAuthentication: true,
        baseUrl: 'http://paypal.buyluck.net/api/');
  }
}
