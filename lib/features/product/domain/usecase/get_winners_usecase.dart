import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetWinnersUseCase extends UseCase<WinnersListEntity, NoParams> {
  final IProductRepository repository;

  GetWinnersUseCase(this.repository);

  @override
  Future<Result<AppErrors, WinnersListEntity>> call(NoParams params) {
    return repository.getWinners();
  }
}
