part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProducts() = GetProducts;
  const factory ProductEvent.getWinners() = GetWinners;

  const factory ProductEvent.getProductDetails({ProductDetailsParam? param}) =
      GetProductDetails;

  const factory ProductEvent.searchProducts({
    SearchParam? searchParam,
  }) = SearchProducts;
}
