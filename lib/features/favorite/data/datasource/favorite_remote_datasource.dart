import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/favorite/data/model/get_favorite_model.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';
import 'ifavorite_remote_datasource.dart';

@Injectable(as: IFavoriteRemoteDatasource)
class FavoriteRemoteDatasource extends IFavoriteRemoteDatasource {
  @override
  Future<Either<AppErrors, EmptyResponse>> addToFavorite(AddToFavParam params) {
    return request(
      converter: (map) => EmptyResponse.fromMap(map),
      method: HttpMethod.POST,
      url: API_FAVORITE,
      withAuthentication: true,
      body: params.toMap(),
      cancelToken: params.cancelToken,
    );
  }

  @override
  Future<Either<AppErrors, EmptyResponse>> deleteFromFavorite(
      AddToFavParam params) {
    return request(
      converter: (map) => EmptyResponse.fromMap(map),
      method: HttpMethod.DELETE,
      url: API_FAVORITE + "/${params.productId}",
      withAuthentication: true,
      cancelToken: params.cancelToken,
    );
  }

  @override
  Future<Either<AppErrors, GetFavoriteModel>> getFavorite(NoParams params) {
    return request(
      converter: (map) => GetFavoriteModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_FAVORITE,
      withAuthentication: true,
      cancelToken: params.cancelToken,
    );
  }
}
