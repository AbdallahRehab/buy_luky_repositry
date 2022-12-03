import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/product/data/datasource/iproduct_remote_datasource.dart';
import 'package:buy_luck/features/product/data/model/product_details_model.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:buy_luck/features/product/data/model/winners_list_model.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';

@Injectable(as: IProductRemoteDatasource)
class ProductRemoteDatasource extends IProductRemoteDatasource {
  @override
  Future<Either<AppErrors, ProductListModel>> getProducts(NoParams params) {
    return request(
      converter: (map) => ProductListModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_GET_PRODUCTS,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, ProductListModel>> search(SearchParam params) {
    return request(
      converter: (map) => ProductListModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_SEARCH,
      withAuthentication: true,
      queryParameters: params.toMap(),
      cancelToken: params.cancelToken,
    );
  }

  @override
  Future<Either<AppErrors, ProductDetailsModel>> getProductDetails(int id) {
    return request(
      converter: (map) => ProductDetailsModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_GET_PRODUCTS + "/$id",
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, WinnersListModel>> getWinners() {
    return request(
      converter: (map) => WinnersListModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_GET_WINNERS,
      withAuthentication: true,
    );
  }
}
