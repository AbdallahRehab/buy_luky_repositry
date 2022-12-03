import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class LoginUseCase extends UseCase<TokenResponse, LoginParams> {
  final IUserManagementRepository iUserManagementRepository;

  LoginUseCase(this.iUserManagementRepository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(LoginParams params) =>
      iUserManagementRepository.login(
        body: params,
      );
}
