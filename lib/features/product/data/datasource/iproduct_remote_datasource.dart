import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/product/data/model/product_details_model.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:buy_luck/features/product/data/model/winners_list_model.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IProductRemoteDatasource extends RemoteDataSource {
  Future<Either<AppErrors, ProductListModel>> getProducts(NoParams params);
  Future<Either<AppErrors, ProductDetailsModel>> getProductDetails(int id);
  Future<Either<AppErrors, ProductListModel>> search(SearchParam params);
  Future<Either<AppErrors, WinnersListModel>> getWinners();
}
