import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/home/domain/entity/check_app_version_updates_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';

import '../../../../core/errors/app_errors.dart';

class CheckUpdateUseCase
    extends UseCase<CheckAppVersionUpdatesEntity, NoParams> {
  final IHomeRepository iHomeViewRepository;

  CheckUpdateUseCase(this.iHomeViewRepository);

  @override
  Future<Result<AppErrors, CheckAppVersionUpdatesEntity>> call(
      NoParams params) {
    return iHomeViewRepository.checkAppUpdate(params.cancelToken);
  }
}
