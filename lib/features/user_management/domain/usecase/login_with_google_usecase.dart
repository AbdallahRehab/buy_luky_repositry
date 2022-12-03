import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/google_login_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class LoginWithGoogleUsecase extends UseCase<TokenResponse, GoogleLoginParam> {
  final IUserManagementRepository userManagementRepository;

  LoginWithGoogleUsecase(this.userManagementRepository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(GoogleLoginParam params) {
    return userManagementRepository.loginWithGoogle(params);
  }
}
