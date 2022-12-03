import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:buy_luck/features/favorite/domain/repository/ifavorite_repository.dart';

import '../../../../core/errors/app_errors.dart';

class DeleteFromFavUseCase extends UseCase<EmptyResponse, AddToFavParam> {
  final IFavoriteRepository repository;

  DeleteFromFavUseCase(this.repository);

  @override
  Future<Result<AppErrors, EmptyResponse>> call(AddToFavParam params) {
    return repository.deleteFromFavorite(params);
  }
}
