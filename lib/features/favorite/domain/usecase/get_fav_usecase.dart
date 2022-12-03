import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/favorite/domain/repository/ifavorite_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetFavUseCase extends UseCase<GetFavoriteEntity, NoParams> {
  final IFavoriteRepository repository;

  GetFavUseCase(this.repository);

  @override
  Future<Result<AppErrors, GetFavoriteEntity>> call(NoParams params) {
    return repository.getFavorites(params);
  }
}
