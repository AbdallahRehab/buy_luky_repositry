import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/domain/repository/icart_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ChargeUseCase extends UseCase<EmptyResponse, ChargeBodyParam> {
  final ICartRepository repository;

  ChargeUseCase(this.repository);

  @override
  Future<Result<AppErrors, EmptyResponse>> call(ChargeBodyParam params) =>
      repository.charge(body: params);
}
