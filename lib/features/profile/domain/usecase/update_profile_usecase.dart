import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/domain/repository/iprofile_repository.dart';

import '../../../../core/errors/app_errors.dart';

class UpdateProfileUsecase
    extends UseCase<EmptyResponse, UpdateProfileParameter> {
  final IProfileRepository repository;

  UpdateProfileUsecase(this.repository);
  @override
  Future<Result<AppErrors, EmptyResponse>> call(
          UpdateProfileParameter params) =>
      repository.updateProfile(params);
}
