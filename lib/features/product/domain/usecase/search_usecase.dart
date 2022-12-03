import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';

import '../../../../core/errors/app_errors.dart';

class SearchUsecase extends UseCase<ProductListEntity, SearchParam> {
  final IProductRepository repository;

  SearchUsecase(this.repository);
  @override
  Future<Result<AppErrors, ProductListEntity>> call(SearchParam params) {
    return repository.search(params);
  }
}
