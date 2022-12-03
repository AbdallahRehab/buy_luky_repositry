import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/domain/entity/category_list_entity.dart';
import 'package:buy_luck/features/category/domain/repository/icategory_repository.dart';
import 'package:buy_luck/features/category/domain/usecase/get_categories_usecase.dart';
import 'package:buy_luck/features/category/domain/usecase/get_products_category_usecase.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState.initCategory());

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    yield* event.map(
      getCategories: (e) => _mapGetCategoriesToState(e),
      getProductsCategory: (e) => _mapGetProductsCategoryToState(e),
    );
  }

  Stream<CategoryState> _mapGetCategoriesToState(GetCategories event) async* {
    yield CategoryState.loadingCategory();

    final result =
        await GetCategoriesUsecase(getIt<ICategoryRepository>())(NoParams());
    if (result.hasDataOnly) {
      yield CategoryState.loadedCategories(categoryListEntity: result.data);
    } else {
      yield CategoryState.errorCategory(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }

  Stream<CategoryState> _mapGetProductsCategoryToState(
      GetProductsCategory event) async* {
    yield CategoryState.loadingCategory();

    final result = await GetProductsCategoryUsecase(
        getIt<ICategoryRepository>())(event.productsCategoryParam);
    if (result.hasDataOnly) {
      yield CategoryState.loadedProductsCategory(
          productListEntity: result.data);
    } else {
      yield CategoryState.errorCategory(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }
}
