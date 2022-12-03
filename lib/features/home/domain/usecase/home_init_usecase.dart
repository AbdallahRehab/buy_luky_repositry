import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';

import '../../../../core/errors/app_errors.dart';

class HomeInitUseCase extends UseCase<HomeInitEntity, NoParams> {
  final IHomeRepository iHomeViewRepository;

  HomeInitUseCase(this.iHomeViewRepository);

  @override
  Future<Result<AppErrors, HomeInitEntity>> call(NoParams params) {
    return iHomeViewRepository.homeInit(params);
  }
}
