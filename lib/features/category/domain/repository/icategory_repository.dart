import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/domain/entity/category_list_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class ICategoryRepository extends Repository {
  Future<Result<AppErrors, CategoryListEntity>> getCategories(NoParams params);
  Future<Result<AppErrors, ProductListEntity>> getProductsCategorie(
      ProductsCategoryParam params);
}
