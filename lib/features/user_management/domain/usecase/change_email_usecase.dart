import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/user_management/data/params/change_email_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ChangeEmailUsecase extends UseCase<EmptyResponse, ChangeEmailParam> {
  final IUserManagementRepository repository;

  ChangeEmailUsecase(this.repository);

  @override
  Future<Result<AppErrors, EmptyResponse>> call(ChangeEmailParam params) =>
      repository.changeEmail(params);
}
