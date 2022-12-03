import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../core/params/no_params.dart';

class LogoutUsecase extends UseCase<EmptyResponse, NoParams> {
  final IUserManagementRepository repository;

  LogoutUsecase(this.repository);

  @override
  Future<Result<AppErrors, EmptyResponse>> call(NoParams params) =>
      repository.logOut(params);
}
