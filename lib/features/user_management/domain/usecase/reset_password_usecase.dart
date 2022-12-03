import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ResetPasswordUsecase extends UseCase<TokenResponse, ResetPasswordParam> {
  final IUserManagementRepository repository;

  ResetPasswordUsecase(this.repository);
  @override
  Future<Result<AppErrors, TokenResponse>> call(ResetPasswordParam params) {
    return repository.resetPassword(params);
  }
}
