part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initProduct() = InitProduct;

  const factory ProductState.loadingProduct() = LoadingProduct;

  const factory ProductState.loadedGetProducts(
      {ProductListEntity? productListEntity}) = LoadedGetProducts;

  const factory ProductState.productDetailsLoaded(
      {ProductDetailsEntity? product}) = ProductDetailsLoaded;

  const factory ProductState.loadedSearchProducts(
      {ProductListEntity? searchResult}) = LoadedSearchProducts;

  const factory ProductState.getWinnersLoaded({WinnersListEntity? winners}) =
      GetWinnersLoaded;

  const factory ProductState.errorProduct({
    AppErrors? error,
    required VoidCallback callback,
  }) = ErrorProduct;
}
