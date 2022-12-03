import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';

import '../../../../core/errors/app_errors.dart';
import '../entity/privacy_entity.dart';
import '../repository/iprofile_repository.dart';

class PrivacyUseCase extends UseCase<PrivacyEntity, NoParams> {
  final IProfileRepository repository;

  PrivacyUseCase(this.repository);

  @override
  Future<Result<AppErrors, PrivacyEntity>> call(NoParams params) {
    return repository.getPrivacy(params);
  }
}
