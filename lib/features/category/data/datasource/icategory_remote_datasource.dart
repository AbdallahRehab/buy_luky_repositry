import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/category/data/model/category_list_model.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class ICategoryRemoteDatasource extends RemoteDataSource {
  Future<Either<AppErrors, CategoryListModel>> getCategories(NoParams params);
  Future<Either<AppErrors, ProductListModel>> getProductsCategorie(
      ProductsCategoryParam params);
}
