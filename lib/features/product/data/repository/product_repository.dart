import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/product/data/datasource/iproduct_remote_datasource.dart';
import 'package:buy_luck/features/product/data/model/product_details_model.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:buy_luck/features/product/data/model/winners_list_model.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:buy_luck/features/product/domain/entity/product_details_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';

@Injectable(as: IProductRepository)
class ProductRepository extends IProductRepository {
  final IProductRemoteDatasource remoteDatasource;

  ProductRepository(this.remoteDatasource);

  @override
  Future<Result<AppErrors, ProductListEntity>> getProducts(
      NoParams params) async {
    final remoteResult = await remoteDatasource.getProducts(params);
    return execute<ProductListModel, ProductListEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, ProductListEntity>> search(
      SearchParam params) async {
    final remoteResult = await remoteDatasource.search(params);
    return execute<ProductListModel, ProductListEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, ProductDetailsEntity>> getProductDetails(
      int id) async {
    final remoteResult = await remoteDatasource.getProductDetails(id);
    return execute<ProductDetailsModel, ProductDetailsEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, WinnersListEntity>> getWinners() async {
    final remoteResult = await remoteDatasource.getWinners();
    return execute<WinnersListModel, WinnersListEntity>(
        remoteResult: remoteResult);
  }
}
