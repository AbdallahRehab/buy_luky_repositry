part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initCategory() = InitCategory;

  const factory CategoryState.loadingCategory() = LoadingCategory;

  const factory CategoryState.loadedCategories(
      {CategoryListEntity? categoryListEntity}) = LoadedCategories;

  const factory CategoryState.loadedProductsCategory(
      {ProductListEntity? productListEntity}) = LoadedProductsCategory;

  const factory CategoryState.errorCategory({
    AppErrors? error,
    required VoidCallback callback,
  }) = ErrorCategory;
}
