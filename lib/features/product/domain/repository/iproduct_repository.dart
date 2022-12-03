import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:buy_luck/features/product/domain/entity/product_details_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IProductRepository extends Repository {
  Future<Result<AppErrors, ProductListEntity>> getProducts(NoParams params);
  Future<Result<AppErrors, ProductDetailsEntity>> getProductDetails(int id);
  Future<Result<AppErrors, ProductListEntity>> search(SearchParam params);
  Future<Result<AppErrors, WinnersListEntity>> getWinners();
}
