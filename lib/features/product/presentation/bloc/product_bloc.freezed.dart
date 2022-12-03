// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  GetProducts getProducts() {
    return const GetProducts();
  }

  GetWinners getWinners() {
    return const GetWinners();
  }

  GetProductDetails getProductDetails({ProductDetailsParam? param}) {
    return GetProductDetails(
      param: param,
    );
  }

  SearchProducts searchProducts({SearchParam? searchParam}) {
    return SearchProducts(
      searchParam: searchParam,
    );
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getWinners,
    required TResult Function(ProductDetailsParam? param) getProductDetails,
    required TResult Function(SearchParam? searchParam) searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getWinners,
    TResult Function(ProductDetailsParam? param)? getProductDetails,
    TResult Function(SearchParam? searchParam)? searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetWinners value) getWinners,
    required TResult Function(GetProductDetails value) getProductDetails,
    required TResult Function(SearchProducts value) searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetWinners value)? getWinners,
    TResult Function(GetProductDetails value)? getProductDetails,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class $GetProductsCopyWith<$Res> {
  factory $GetProductsCopyWith(
          GetProducts value, $Res Function(GetProducts) then) =
      _$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $GetProductsCopyWith<$Res> {
  _$GetProductsCopyWithImpl(
      GetProducts _value, $Res Function(GetProducts) _then)
      : super(_value, (v) => _then(v as GetProducts));

  @override
  GetProducts get _value => super._value as GetProducts;
}

/// @nodoc

class _$GetProducts implements GetProducts {
  const _$GetProducts();

  @override
  String toString() {
    return 'ProductEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getWinners,
    required TResult Function(ProductDetailsParam? param) getProductDetails,
    required TResult Function(SearchParam? searchParam) searchProducts,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getWinners,
    TResult Function(ProductDetailsParam? param)? getProductDetails,
    TResult Function(SearchParam? searchParam)? searchProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetWinners value) getWinners,
    required TResult Function(GetProductDetails value) getProductDetails,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetWinners value)? getWinners,
    TResult Function(GetProductDetails value)? getProductDetails,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements ProductEvent {
  const factory GetProducts() = _$GetProducts;
}

/// @nodoc
abstract class $GetWinnersCopyWith<$Res> {
  factory $GetWinnersCopyWith(
          GetWinners value, $Res Function(GetWinners) then) =
      _$GetWinnersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWinnersCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements $GetWinnersCopyWith<$Res> {
  _$GetWinnersCopyWithImpl(GetWinners _value, $Res Function(GetWinners) _then)
      : super(_value, (v) => _then(v as GetWinners));

  @override
  GetWinners get _value => super._value as GetWinners;
}

/// @nodoc

class _$GetWinners implements GetWinners {
  const _$GetWinners();

  @override
  String toString() {
    return 'ProductEvent.getWinners()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetWinners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getWinners,
    required TResult Function(ProductDetailsParam? param) getProductDetails,
    required TResult Function(SearchParam? searchParam) searchProducts,
  }) {
    return getWinners();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getWinners,
    TResult Function(ProductDetailsParam? param)? getProductDetails,
    TResult Function(SearchParam? searchParam)? searchProducts,
    required TResult orElse(),
  }) {
    if (getWinners != null) {
      return getWinners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetWinners value) getWinners,
    required TResult Function(GetProductDetails value) getProductDetails,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return getWinners(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetWinners value)? getWinners,
    TResult Function(GetProductDetails value)? getProductDetails,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (getWinners != null) {
      return getWinners(this);
    }
    return orElse();
  }
}

abstract class GetWinners implements ProductEvent {
  const factory GetWinners() = _$GetWinners;
}

/// @nodoc
abstract class $GetProductDetailsCopyWith<$Res> {
  factory $GetProductDetailsCopyWith(
          GetProductDetails value, $Res Function(GetProductDetails) then) =
      _$GetProductDetailsCopyWithImpl<$Res>;
  $Res call({ProductDetailsParam? param});
}

/// @nodoc
class _$GetProductDetailsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $GetProductDetailsCopyWith<$Res> {
  _$GetProductDetailsCopyWithImpl(
      GetProductDetails _value, $Res Function(GetProductDetails) _then)
      : super(_value, (v) => _then(v as GetProductDetails));

  @override
  GetProductDetails get _value => super._value as GetProductDetails;

  @override
  $Res call({
    Object? param = freezed,
  }) {
    return _then(GetProductDetails(
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as ProductDetailsParam?,
    ));
  }
}

/// @nodoc

class _$GetProductDetails implements GetProductDetails {
  const _$GetProductDetails({this.param});

  @override
  final ProductDetailsParam? param;

  @override
  String toString() {
    return 'ProductEvent.getProductDetails(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProductDetails &&
            (identical(other.param, param) ||
                const DeepCollectionEquality().equals(other.param, param)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(param);

  @JsonKey(ignore: true)
  @override
  $GetProductDetailsCopyWith<GetProductDetails> get copyWith =>
      _$GetProductDetailsCopyWithImpl<GetProductDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getWinners,
    required TResult Function(ProductDetailsParam? param) getProductDetails,
    required TResult Function(SearchParam? searchParam) searchProducts,
  }) {
    return getProductDetails(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getWinners,
    TResult Function(ProductDetailsParam? param)? getProductDetails,
    TResult Function(SearchParam? searchParam)? searchProducts,
    required TResult orElse(),
  }) {
    if (getProductDetails != null) {
      return getProductDetails(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetWinners value) getWinners,
    required TResult Function(GetProductDetails value) getProductDetails,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return getProductDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetWinners value)? getWinners,
    TResult Function(GetProductDetails value)? getProductDetails,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (getProductDetails != null) {
      return getProductDetails(this);
    }
    return orElse();
  }
}

abstract class GetProductDetails implements ProductEvent {
  const factory GetProductDetails({ProductDetailsParam? param}) =
      _$GetProductDetails;

  ProductDetailsParam? get param => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductDetailsCopyWith<GetProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductsCopyWith<$Res> {
  factory $SearchProductsCopyWith(
          SearchProducts value, $Res Function(SearchProducts) then) =
      _$SearchProductsCopyWithImpl<$Res>;
  $Res call({SearchParam? searchParam});
}

/// @nodoc
class _$SearchProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements $SearchProductsCopyWith<$Res> {
  _$SearchProductsCopyWithImpl(
      SearchProducts _value, $Res Function(SearchProducts) _then)
      : super(_value, (v) => _then(v as SearchProducts));

  @override
  SearchProducts get _value => super._value as SearchProducts;

  @override
  $Res call({
    Object? searchParam = freezed,
  }) {
    return _then(SearchProducts(
      searchParam: searchParam == freezed
          ? _value.searchParam
          : searchParam // ignore: cast_nullable_to_non_nullable
              as SearchParam?,
    ));
  }
}

/// @nodoc

class _$SearchProducts implements SearchProducts {
  const _$SearchProducts({this.searchParam});

  @override
  final SearchParam? searchParam;

  @override
  String toString() {
    return 'ProductEvent.searchProducts(searchParam: $searchParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchProducts &&
            (identical(other.searchParam, searchParam) ||
                const DeepCollectionEquality()
                    .equals(other.searchParam, searchParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchParam);

  @JsonKey(ignore: true)
  @override
  $SearchProductsCopyWith<SearchProducts> get copyWith =>
      _$SearchProductsCopyWithImpl<SearchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function() getWinners,
    required TResult Function(ProductDetailsParam? param) getProductDetails,
    required TResult Function(SearchParam? searchParam) searchProducts,
  }) {
    return searchProducts(searchParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function()? getWinners,
    TResult Function(ProductDetailsParam? param)? getProductDetails,
    TResult Function(SearchParam? searchParam)? searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(searchParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetWinners value) getWinners,
    required TResult Function(GetProductDetails value) getProductDetails,
    required TResult Function(SearchProducts value) searchProducts,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetWinners value)? getWinners,
    TResult Function(GetProductDetails value)? getProductDetails,
    TResult Function(SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class SearchProducts implements ProductEvent {
  const factory SearchProducts({SearchParam? searchParam}) = _$SearchProducts;

  SearchParam? get searchParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductsCopyWith<SearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  InitProduct initProduct() {
    return const InitProduct();
  }

  LoadingProduct loadingProduct() {
    return const LoadingProduct();
  }

  LoadedGetProducts loadedGetProducts({ProductListEntity? productListEntity}) {
    return LoadedGetProducts(
      productListEntity: productListEntity,
    );
  }

  ProductDetailsLoaded productDetailsLoaded({ProductDetailsEntity? product}) {
    return ProductDetailsLoaded(
      product: product,
    );
  }

  LoadedSearchProducts loadedSearchProducts({ProductListEntity? searchResult}) {
    return LoadedSearchProducts(
      searchResult: searchResult,
    );
  }

  GetWinnersLoaded getWinnersLoaded({WinnersListEntity? winners}) {
    return GetWinnersLoaded(
      winners: winners,
    );
  }

  ErrorProduct errorProduct(
      {AppErrors? error, required void Function() callback}) {
    return ErrorProduct(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class $InitProductCopyWith<$Res> {
  factory $InitProductCopyWith(
          InitProduct value, $Res Function(InitProduct) then) =
      _$InitProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitProductCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements $InitProductCopyWith<$Res> {
  _$InitProductCopyWithImpl(
      InitProduct _value, $Res Function(InitProduct) _then)
      : super(_value, (v) => _then(v as InitProduct));

  @override
  InitProduct get _value => super._value as InitProduct;
}

/// @nodoc

class _$InitProduct implements InitProduct {
  const _$InitProduct();

  @override
  String toString() {
    return 'ProductState.initProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return initProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (initProduct != null) {
      return initProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return initProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (initProduct != null) {
      return initProduct(this);
    }
    return orElse();
  }
}

abstract class InitProduct implements ProductState {
  const factory InitProduct() = _$InitProduct;
}

/// @nodoc
abstract class $LoadingProductCopyWith<$Res> {
  factory $LoadingProductCopyWith(
          LoadingProduct value, $Res Function(LoadingProduct) then) =
      _$LoadingProductCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProductCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $LoadingProductCopyWith<$Res> {
  _$LoadingProductCopyWithImpl(
      LoadingProduct _value, $Res Function(LoadingProduct) _then)
      : super(_value, (v) => _then(v as LoadingProduct));

  @override
  LoadingProduct get _value => super._value as LoadingProduct;
}

/// @nodoc

class _$LoadingProduct implements LoadingProduct {
  const _$LoadingProduct();

  @override
  String toString() {
    return 'ProductState.loadingProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return loadingProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadingProduct != null) {
      return loadingProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return loadingProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadingProduct != null) {
      return loadingProduct(this);
    }
    return orElse();
  }
}

abstract class LoadingProduct implements ProductState {
  const factory LoadingProduct() = _$LoadingProduct;
}

/// @nodoc
abstract class $LoadedGetProductsCopyWith<$Res> {
  factory $LoadedGetProductsCopyWith(
          LoadedGetProducts value, $Res Function(LoadedGetProducts) then) =
      _$LoadedGetProductsCopyWithImpl<$Res>;
  $Res call({ProductListEntity? productListEntity});
}

/// @nodoc
class _$LoadedGetProductsCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $LoadedGetProductsCopyWith<$Res> {
  _$LoadedGetProductsCopyWithImpl(
      LoadedGetProducts _value, $Res Function(LoadedGetProducts) _then)
      : super(_value, (v) => _then(v as LoadedGetProducts));

  @override
  LoadedGetProducts get _value => super._value as LoadedGetProducts;

  @override
  $Res call({
    Object? productListEntity = freezed,
  }) {
    return _then(LoadedGetProducts(
      productListEntity: productListEntity == freezed
          ? _value.productListEntity
          : productListEntity // ignore: cast_nullable_to_non_nullable
              as ProductListEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedGetProducts implements LoadedGetProducts {
  const _$LoadedGetProducts({this.productListEntity});

  @override
  final ProductListEntity? productListEntity;

  @override
  String toString() {
    return 'ProductState.loadedGetProducts(productListEntity: $productListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedGetProducts &&
            (identical(other.productListEntity, productListEntity) ||
                const DeepCollectionEquality()
                    .equals(other.productListEntity, productListEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productListEntity);

  @JsonKey(ignore: true)
  @override
  $LoadedGetProductsCopyWith<LoadedGetProducts> get copyWith =>
      _$LoadedGetProductsCopyWithImpl<LoadedGetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return loadedGetProducts(productListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadedGetProducts != null) {
      return loadedGetProducts(productListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return loadedGetProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadedGetProducts != null) {
      return loadedGetProducts(this);
    }
    return orElse();
  }
}

abstract class LoadedGetProducts implements ProductState {
  const factory LoadedGetProducts({ProductListEntity? productListEntity}) =
      _$LoadedGetProducts;

  ProductListEntity? get productListEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedGetProductsCopyWith<LoadedGetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsLoadedCopyWith<$Res> {
  factory $ProductDetailsLoadedCopyWith(ProductDetailsLoaded value,
          $Res Function(ProductDetailsLoaded) then) =
      _$ProductDetailsLoadedCopyWithImpl<$Res>;
  $Res call({ProductDetailsEntity? product});
}

/// @nodoc
class _$ProductDetailsLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $ProductDetailsLoadedCopyWith<$Res> {
  _$ProductDetailsLoadedCopyWithImpl(
      ProductDetailsLoaded _value, $Res Function(ProductDetailsLoaded) _then)
      : super(_value, (v) => _then(v as ProductDetailsLoaded));

  @override
  ProductDetailsLoaded get _value => super._value as ProductDetailsLoaded;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(ProductDetailsLoaded(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsEntity?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsLoaded implements ProductDetailsLoaded {
  const _$ProductDetailsLoaded({this.product});

  @override
  final ProductDetailsEntity? product;

  @override
  String toString() {
    return 'ProductState.productDetailsLoaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDetailsLoaded &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $ProductDetailsLoadedCopyWith<ProductDetailsLoaded> get copyWith =>
      _$ProductDetailsLoadedCopyWithImpl<ProductDetailsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return productDetailsLoaded(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (productDetailsLoaded != null) {
      return productDetailsLoaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return productDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (productDetailsLoaded != null) {
      return productDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsLoaded implements ProductState {
  const factory ProductDetailsLoaded({ProductDetailsEntity? product}) =
      _$ProductDetailsLoaded;

  ProductDetailsEntity? get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsLoadedCopyWith<ProductDetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedSearchProductsCopyWith<$Res> {
  factory $LoadedSearchProductsCopyWith(LoadedSearchProducts value,
          $Res Function(LoadedSearchProducts) then) =
      _$LoadedSearchProductsCopyWithImpl<$Res>;
  $Res call({ProductListEntity? searchResult});
}

/// @nodoc
class _$LoadedSearchProductsCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $LoadedSearchProductsCopyWith<$Res> {
  _$LoadedSearchProductsCopyWithImpl(
      LoadedSearchProducts _value, $Res Function(LoadedSearchProducts) _then)
      : super(_value, (v) => _then(v as LoadedSearchProducts));

  @override
  LoadedSearchProducts get _value => super._value as LoadedSearchProducts;

  @override
  $Res call({
    Object? searchResult = freezed,
  }) {
    return _then(LoadedSearchProducts(
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as ProductListEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedSearchProducts implements LoadedSearchProducts {
  const _$LoadedSearchProducts({this.searchResult});

  @override
  final ProductListEntity? searchResult;

  @override
  String toString() {
    return 'ProductState.loadedSearchProducts(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedSearchProducts &&
            (identical(other.searchResult, searchResult) ||
                const DeepCollectionEquality()
                    .equals(other.searchResult, searchResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchResult);

  @JsonKey(ignore: true)
  @override
  $LoadedSearchProductsCopyWith<LoadedSearchProducts> get copyWith =>
      _$LoadedSearchProductsCopyWithImpl<LoadedSearchProducts>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return loadedSearchProducts(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadedSearchProducts != null) {
      return loadedSearchProducts(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return loadedSearchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (loadedSearchProducts != null) {
      return loadedSearchProducts(this);
    }
    return orElse();
  }
}

abstract class LoadedSearchProducts implements ProductState {
  const factory LoadedSearchProducts({ProductListEntity? searchResult}) =
      _$LoadedSearchProducts;

  ProductListEntity? get searchResult => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedSearchProductsCopyWith<LoadedSearchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWinnersLoadedCopyWith<$Res> {
  factory $GetWinnersLoadedCopyWith(
          GetWinnersLoaded value, $Res Function(GetWinnersLoaded) then) =
      _$GetWinnersLoadedCopyWithImpl<$Res>;
  $Res call({WinnersListEntity? winners});
}

/// @nodoc
class _$GetWinnersLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements $GetWinnersLoadedCopyWith<$Res> {
  _$GetWinnersLoadedCopyWithImpl(
      GetWinnersLoaded _value, $Res Function(GetWinnersLoaded) _then)
      : super(_value, (v) => _then(v as GetWinnersLoaded));

  @override
  GetWinnersLoaded get _value => super._value as GetWinnersLoaded;

  @override
  $Res call({
    Object? winners = freezed,
  }) {
    return _then(GetWinnersLoaded(
      winners: winners == freezed
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as WinnersListEntity?,
    ));
  }
}

/// @nodoc

class _$GetWinnersLoaded implements GetWinnersLoaded {
  const _$GetWinnersLoaded({this.winners});

  @override
  final WinnersListEntity? winners;

  @override
  String toString() {
    return 'ProductState.getWinnersLoaded(winners: $winners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWinnersLoaded &&
            (identical(other.winners, winners) ||
                const DeepCollectionEquality().equals(other.winners, winners)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(winners);

  @JsonKey(ignore: true)
  @override
  $GetWinnersLoadedCopyWith<GetWinnersLoaded> get copyWith =>
      _$GetWinnersLoadedCopyWithImpl<GetWinnersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return getWinnersLoaded(winners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (getWinnersLoaded != null) {
      return getWinnersLoaded(winners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return getWinnersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (getWinnersLoaded != null) {
      return getWinnersLoaded(this);
    }
    return orElse();
  }
}

abstract class GetWinnersLoaded implements ProductState {
  const factory GetWinnersLoaded({WinnersListEntity? winners}) =
      _$GetWinnersLoaded;

  WinnersListEntity? get winners => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWinnersLoadedCopyWith<GetWinnersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorProductCopyWith<$Res> {
  factory $ErrorProductCopyWith(
          ErrorProduct value, $Res Function(ErrorProduct) then) =
      _$ErrorProductCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorProductCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements $ErrorProductCopyWith<$Res> {
  _$ErrorProductCopyWithImpl(
      ErrorProduct _value, $Res Function(ErrorProduct) _then)
      : super(_value, (v) => _then(v as ErrorProduct));

  @override
  ErrorProduct get _value => super._value as ErrorProduct;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ErrorProduct(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppErrors?,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }

  @override
  $AppErrorsCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorsCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorProduct implements ErrorProduct {
  const _$ErrorProduct({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'ProductState.errorProduct(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorProduct &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.callback, callback) ||
                const DeepCollectionEquality()
                    .equals(other.callback, callback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(callback);

  @JsonKey(ignore: true)
  @override
  $ErrorProductCopyWith<ErrorProduct> get copyWith =>
      _$ErrorProductCopyWithImpl<ErrorProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initProduct,
    required TResult Function() loadingProduct,
    required TResult Function(ProductListEntity? productListEntity)
        loadedGetProducts,
    required TResult Function(ProductDetailsEntity? product)
        productDetailsLoaded,
    required TResult Function(ProductListEntity? searchResult)
        loadedSearchProducts,
    required TResult Function(WinnersListEntity? winners) getWinnersLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProduct,
  }) {
    return errorProduct(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initProduct,
    TResult Function()? loadingProduct,
    TResult Function(ProductListEntity? productListEntity)? loadedGetProducts,
    TResult Function(ProductDetailsEntity? product)? productDetailsLoaded,
    TResult Function(ProductListEntity? searchResult)? loadedSearchProducts,
    TResult Function(WinnersListEntity? winners)? getWinnersLoaded,
    TResult Function(AppErrors? error, void Function() callback)? errorProduct,
    required TResult orElse(),
  }) {
    if (errorProduct != null) {
      return errorProduct(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitProduct value) initProduct,
    required TResult Function(LoadingProduct value) loadingProduct,
    required TResult Function(LoadedGetProducts value) loadedGetProducts,
    required TResult Function(ProductDetailsLoaded value) productDetailsLoaded,
    required TResult Function(LoadedSearchProducts value) loadedSearchProducts,
    required TResult Function(GetWinnersLoaded value) getWinnersLoaded,
    required TResult Function(ErrorProduct value) errorProduct,
  }) {
    return errorProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitProduct value)? initProduct,
    TResult Function(LoadingProduct value)? loadingProduct,
    TResult Function(LoadedGetProducts value)? loadedGetProducts,
    TResult Function(ProductDetailsLoaded value)? productDetailsLoaded,
    TResult Function(LoadedSearchProducts value)? loadedSearchProducts,
    TResult Function(GetWinnersLoaded value)? getWinnersLoaded,
    TResult Function(ErrorProduct value)? errorProduct,
    required TResult orElse(),
  }) {
    if (errorProduct != null) {
      return errorProduct(this);
    }
    return orElse();
  }
}

abstract class ErrorProduct implements ProductState {
  const factory ErrorProduct(
      {AppErrors? error, required void Function() callback}) = _$ErrorProduct;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorProductCopyWith<ErrorProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
