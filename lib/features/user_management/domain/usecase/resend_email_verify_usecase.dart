import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/domain/entity/resend_email_verify_entity.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ResendEmailVerifyUsecase
    extends UseCase<ResendEmailVerifyEntity, NoParams> {
  final IUserManagementRepository iUserManagementRepository;

  ResendEmailVerifyUsecase(this.iUserManagementRepository);
  @override
  Future<Result<AppErrors, ResendEmailVerifyEntity>> call(NoParams params) {
    return iUserManagementRepository.resendEmailVerify(params);
  }
}
