import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/favorite/data/model/get_favorite_model.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IFavoriteRemoteDatasource extends RemoteDataSource {
  Future<Either<AppErrors, GetFavoriteModel>> getFavorite(NoParams params);

  Future<Either<AppErrors, EmptyResponse>> addToFavorite(AddToFavParam params);

  Future<Either<AppErrors, EmptyResponse>> deleteFromFavorite(
      AddToFavParam params);
}
