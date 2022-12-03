import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/domain/repository/icategory_repository.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';

import '../../../../core/errors/app_errors.dart';

class GetProductsCategoryUsecase
    extends UseCase<ProductListEntity, ProductsCategoryParam> {
  final ICategoryRepository repository;

  GetProductsCategoryUsecase(this.repository);

  @override
  Future<Result<AppErrors, ProductListEntity>> call(
      ProductsCategoryParam params) {
    return repository.getProductsCategorie(params);
  }
}
