import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/favorite/data/datasource/ifavorite_remote_datasource.dart';
import 'package:buy_luck/features/favorite/data/model/get_favorite_model.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/favorite/domain/repository/ifavorite_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';

@Injectable(as: IFavoriteRepository)
class FavoriteRepository extends IFavoriteRepository {
  final IFavoriteRemoteDatasource _iFavoriteRemoteDatasource;

  FavoriteRepository(this._iFavoriteRemoteDatasource);

  @override
  Future<Result<AppErrors, EmptyResponse>> addToFavorite(
      AddToFavParam params) async {
    final remoteResult = await _iFavoriteRemoteDatasource.addToFavorite(params);
    return executeForNoEntity<EmptyResponse>(remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, EmptyResponse>> deleteFromFavorite(
      AddToFavParam params) async {
    final remoteResult =
        await _iFavoriteRemoteDatasource.deleteFromFavorite(params);
    return executeForNoEntity<EmptyResponse>(remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, GetFavoriteEntity>> getFavorites(
      NoParams params) async {
    final remoteResult = await _iFavoriteRemoteDatasource.getFavorite(params);
    return execute<GetFavoriteModel, GetFavoriteEntity>(
        remoteResult: remoteResult);
  }
}
