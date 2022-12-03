import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:buy_luck/features/cart/domain/entity/generate_payment_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class ICartRepository extends Repository {
  Future<Result<AppErrors, EmptyResponse>> charge({
    required ChargeBodyParam body,
  });

  Future<Result<AppErrors, EmptyResponse>> checkout({
    required CheckoutBodyParam body,
  });
  Future<Result<AppErrors, GeneratePaymentEntity>> generatePayment({
    required GeneratePaymentParam param,
  });
}
