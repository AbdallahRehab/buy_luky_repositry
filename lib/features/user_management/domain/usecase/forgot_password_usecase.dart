import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ForgotPasswordUsecase
    extends UseCase<TokenResponse, ForgotPasswordParam> {
  final IUserManagementRepository repository;

  ForgotPasswordUsecase(this.repository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(ForgotPasswordParam params) {
    return repository.forgotPassword(params);
  }
}
