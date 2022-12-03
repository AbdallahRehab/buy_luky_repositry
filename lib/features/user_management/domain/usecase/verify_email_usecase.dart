import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:buy_luck/features/user_management/domain/entity/verify_email_entity.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class VerifyEmailUsecase extends UseCase<VerifyEmailEntity, VerifyEmailParam> {
  final IUserManagementRepository iUserManagementRepository;

  VerifyEmailUsecase(this.iUserManagementRepository);

  @override
  Future<Result<AppErrors, VerifyEmailEntity>> call(VerifyEmailParam params) {
    return iUserManagementRepository.verifyEmail(params);
  }
}
