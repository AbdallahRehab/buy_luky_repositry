import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ChangePasswordUsecase
    extends UseCase<TokenResponse, ChangePasswordParam> {
  final IUserManagementRepository repository;

  ChangePasswordUsecase(this.repository);
  @override
  Future<Result<AppErrors, TokenResponse>> call(ChangePasswordParam params) =>
      repository.changePassword(params);
}
