import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:buy_luck/features/product/domain/entity/product_details_entity.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';
import 'package:buy_luck/features/product/domain/repository/iproduct_repository.dart';
import 'package:buy_luck/features/product/domain/usecase/get_product_details_usecase.dart';
import 'package:buy_luck/features/product/domain/usecase/get_products_usecase.dart';
import 'package:buy_luck/features/product/domain/usecase/get_winners_usecase.dart';
import 'package:buy_luck/features/product/domain/usecase/search_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initProduct());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    yield* event.map(
      getProducts: (e) => _mapGetProductsToState(e),
      searchProducts: _mapSearchToStart,
      getProductDetails: _mapGetProductDetailsToState,
      getWinners: (e) => _mapGetWinnersToState(e),
    );
  }

  Stream<ProductState> _mapGetProductsToState(GetProducts event) async* {
    yield ProductState.loadingProduct();

    final result =
        await GetProductsUsecase(getIt<IProductRepository>())(NoParams());

    if (result.hasDataOnly) {
      yield ProductState.loadedGetProducts(productListEntity: result.data);
    } else {
      yield ProductState.errorProduct(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }

  Stream<ProductState> _mapSearchToStart(SearchProducts event) async* {
    yield ProductState.loadingProduct();

    final result =
        await SearchUsecase(getIt<IProductRepository>())(event.searchParam!);

    if (result.hasDataOnly) {
      yield ProductState.loadedSearchProducts(searchResult: result.data);
    } else {
      yield ProductState.errorProduct(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }

  Stream<ProductState> _mapGetProductDetailsToState(
      GetProductDetails event) async* {
    yield ProductState.loadingProduct();

    final result = await GetProductDetailsUsecase(getIt<IProductRepository>())(
        event.param!);

    if (result.hasDataOnly) {
      yield ProductState.productDetailsLoaded(product: result.data);
    } else {
      yield ProductState.errorProduct(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }

  Stream<ProductState> _mapGetWinnersToState(GetWinners event) async* {
    yield ProductState.loadingProduct();

    final result =
        await GetWinnersUseCase(getIt<IProductRepository>())(NoParams());

    if (result.hasDataOnly) {
      yield ProductState.getWinnersLoaded(winners: result.data);
    } else {
      yield ProductState.errorProduct(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }
}
