import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/category/data/datasource/icategory_remote_datasource.dart';
import 'package:buy_luck/features/category/data/model/category_list_model.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';

@Injectable(as: ICategoryRemoteDatasource)
class CategoryRemoteDatasource extends ICategoryRemoteDatasource {
  @override
  Future<Either<AppErrors, CategoryListModel>> getCategories(NoParams params) {
    return request<CategoryListModel>(
      converter: (map) => CategoryListModel.fromMap(map),
      method: HttpMethod.GET,
      url: API_GET_CATEGORIES,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, ProductListModel>> getProductsCategorie(
      ProductsCategoryParam params) {
    return request(
      converter: (map) => ProductListModel.fromMap(map),
      method: HttpMethod.GET,
      url: "$API_GET_PRODUCTS_CATEGORIE/${params.id}",
      //queryParameters: params.toMap(),
      withAuthentication: true,
    );
  }
}
