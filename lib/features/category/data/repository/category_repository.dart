import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/category/data/datasource/icategory_remote_datasource.dart';
import 'package:buy_luck/features/category/data/model/category_list_model.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/domain/entity/category_list_entity.dart';
import 'package:buy_luck/features/category/domain/repository/icategory_repository.dart';
import 'package:buy_luck/features/product/data/model/product_list_model.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';

@Injectable(as: ICategoryRepository)
class CategoryRepository extends ICategoryRepository {
  final ICategoryRemoteDatasource remoteDatasource;

  CategoryRepository(this.remoteDatasource);

  @override
  Future<Result<AppErrors, CategoryListEntity>> getCategories(
      NoParams params) async {
    final remoteResult = await remoteDatasource.getCategories(params);
    return execute<CategoryListModel, CategoryListEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, ProductListEntity>> getProductsCategorie(
      ProductsCategoryParam params) async {
    final remoteResult = await remoteDatasource.getProductsCategorie(params);
    return execute<ProductListModel, ProductListEntity>(
        remoteResult: remoteResult);
  }
}
