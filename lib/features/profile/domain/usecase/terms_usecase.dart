import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';

import '../../../../core/errors/app_errors.dart';
import '../entity/privacy_entity.dart';
import '../entity/terms_entity.dart';
import '../repository/iprofile_repository.dart';

class TermsUseCase extends UseCase<TermsEntity, NoParams> {
  final IProfileRepository repository;

  TermsUseCase(this.repository);

  @override
  Future<Result<AppErrors, TermsEntity>> call(NoParams params) {
    return repository.getTerms(params);
  }
}
