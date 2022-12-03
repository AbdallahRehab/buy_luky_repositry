import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IFavoriteRepository extends Repository {
  Future<Result<AppErrors, GetFavoriteEntity>> getFavorites(NoParams params);

  Future<Result<AppErrors, EmptyResponse>> deleteFromFavorite(
      AddToFavParam params);

  Future<Result<AppErrors, EmptyResponse>> addToFavorite(AddToFavParam params);
}
