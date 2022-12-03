import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/features/cart/data/model/generate_payment_model.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class ICartRemoteDataSource extends RemoteDataSource {
  /// Charge method
  Future<Either<AppErrors, EmptyResponse>> charge({
    required ChargeBodyParam body,
  });

  /// Checkout method
  Future<Either<AppErrors, EmptyResponse>> checkout({
    required CheckoutBodyParam body,
  });
  
  /// Generate payment
  Future<Either<AppErrors, GeneratePaymentModel>> generatePayment({
    required GeneratePaymentParam param,
  });
}
