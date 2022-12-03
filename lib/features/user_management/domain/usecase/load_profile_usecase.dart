import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class LoadProfileUseCase extends UseCase<ProfileEntity, NoParams> {
  final IUserManagementRepository iUserManagementRepository;

  LoadProfileUseCase(this.iUserManagementRepository);

  @override
  Future<Result<AppErrors, ProfileEntity>> call(NoParams params) =>
      iUserManagementRepository.loadProfile(
        param: params,
      );
}
