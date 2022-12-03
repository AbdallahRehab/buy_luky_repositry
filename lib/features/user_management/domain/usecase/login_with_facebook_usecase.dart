import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/facebook_login_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class LoginWithFacebookUsecase
    extends UseCase<TokenResponse, FacebookLoginParam> {
  final IUserManagementRepository repository;

  LoginWithFacebookUsecase(this.repository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(FacebookLoginParam params) =>
      repository.loginWithFacebook(params);
}
