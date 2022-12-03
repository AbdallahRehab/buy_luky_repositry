import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';

import '../../../../core/errors/app_errors.dart';
import '../../data/param/coupons_params.dart';
import '../entity/coupons_entity.dart';

class CouponsUseCase extends UseCase<CouponsEntity, CouponsParams> {
  final IHomeRepository iHomeViewRepository;

  CouponsUseCase(this.iHomeViewRepository);

  @override
  Future<Result<AppErrors, CouponsEntity>> call(CouponsParams params) {
    return iHomeViewRepository.getCoupons(params);
  }
}
