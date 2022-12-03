import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/cart/data/datasource/icart_remote_datasource.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/domain/entity/generate_payment_entity.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:buy_luck/features/cart/domain/repository/icart_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';
import '../model/generate_payment_model.dart';

@Injectable(as: ICartRepository)
class CartRepository extends ICartRepository {
  final ICartRemoteDataSource _iCartRemoteDataSource;

  CartRepository(this._iCartRemoteDataSource);

  @override
  Future<Result<AppErrors, EmptyResponse>> charge(
      {required ChargeBodyParam body}) async {
    final remote = await _iCartRemoteDataSource.charge(
      body: body,
    );

    return executeForNoEntity<EmptyResponse>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, EmptyResponse>> checkout(
      {required CheckoutBodyParam body}) async {
    final remote = await _iCartRemoteDataSource.checkout(
      body: body,
    );

    return executeForNoEntity<EmptyResponse>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, GeneratePaymentEntity>> generatePayment(
      {required GeneratePaymentParam param}) async {
    final remote = await _iCartRemoteDataSource.generatePayment(
      param: param,
    );

    return execute<GeneratePaymentModel, GeneratePaymentEntity>(
        remoteResult: remote);
  }
}
