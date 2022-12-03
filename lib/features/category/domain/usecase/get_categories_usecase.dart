import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/category/domain/entity/category_list_entity.dart';
import 'package:buy_luck/features/category/domain/repository/icategory_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetCategoriesUsecase extends UseCase<CategoryListEntity, NoParams> {
  final ICategoryRepository repository;

  GetCategoriesUsecase(this.repository);
  @override
  Future<Result<AppErrors, CategoryListEntity>> call(NoParams params) {
    return repository.getCategories(params);
  }
}
