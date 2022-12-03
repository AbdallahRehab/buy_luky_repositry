import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class RegisterUseCase extends UseCase<TokenResponse, RegisterBodyParam> {
  final IUserManagementRepository iUserManagementRepository;

  RegisterUseCase(this.iUserManagementRepository);

  @override
  Future<Result<AppErrors, TokenResponse>> call(RegisterBodyParam params) =>
      iUserManagementRepository.register(
        body: params,
      );
}
