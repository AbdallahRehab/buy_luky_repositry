import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:buy_luck/features/cart/domain/entity/generate_payment_entity.dart';
import 'package:buy_luck/features/cart/domain/repository/icart_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GeneratePaymentUseCase
    extends UseCase<GeneratePaymentEntity, GeneratePaymentParam> {
  final ICartRepository repository;

  GeneratePaymentUseCase(this.repository);

  @override
  Future<Result<AppErrors, GeneratePaymentEntity>> call(
          GeneratePaymentParam params) =>
      repository.generatePayment(param: params);
}
