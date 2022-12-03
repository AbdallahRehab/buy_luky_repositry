import 'package:buy_luck/core/params/base_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/product/domain/entity/product_details_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';

import '../../../../core/errors/app_errors.dart';

class ProductDetailsParam extends BaseParams {
  final int id;

  ProductDetailsParam(this.id);

  @override
  Map<String, dynamic> toMap() => {};
}

class GetProductDetailsUsecase
    extends UseCase<ProductDetailsEntity, ProductDetailsParam> {
  final IProductRepository repository;

  GetProductDetailsUsecase(this.repository);

  @override
  Future<Result<AppErrors, ProductDetailsEntity>> call(
      ProductDetailsParam params) {
    return repository.getProductDetails(params.id);
  }
}
