import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class LoginGoogleUseCase extends UseCase<TokenResponse, SocialLoginParam> {
  final IUserManagementRepository iUserManagementRepository;

  LoginGoogleUseCase(this.iUserManagementRepository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(SocialLoginParam params) =>
      iUserManagementRepository.loginViaGoogle(
        body: params,
      );
}
