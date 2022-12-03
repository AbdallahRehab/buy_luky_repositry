import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetProductsUsecase extends UseCase<ProductListEntity, NoParams> {
  final IProductRepository repository;

  GetProductsUsecase(this.repository);
  @override
  Future<Result<AppErrors, ProductListEntity>> call(NoParams params) {
    return repository.getProducts(params);
  }
}
