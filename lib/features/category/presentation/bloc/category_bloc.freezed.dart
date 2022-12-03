// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryEventTearOff {
  const _$CategoryEventTearOff();

  GetCategories getCategories() {
    return const GetCategories();
  }

  GetProductsCategory getProductsCategory(
      ProductsCategoryParam productsCategoryParam) {
    return GetProductsCategory(
      productsCategoryParam,
    );
  }
}

/// @nodoc
const $CategoryEvent = _$CategoryEventTearOff();

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(ProductsCategoryParam productsCategoryParam)
        getProductsCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(ProductsCategoryParam productsCategoryParam)?
        getProductsCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetProductsCategory value) getProductsCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetProductsCategory value)? getProductsCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class $GetCategoriesCopyWith<$Res> {
  factory $GetCategoriesCopyWith(
          GetCategories value, $Res Function(GetCategories) then) =
      _$GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements $GetCategoriesCopyWith<$Res> {
  _$GetCategoriesCopyWithImpl(
      GetCategories _value, $Res Function(GetCategories) _then)
      : super(_value, (v) => _then(v as GetCategories));

  @override
  GetCategories get _value => super._value as GetCategories;
}

/// @nodoc

class _$GetCategories implements GetCategories {
  const _$GetCategories();

  @override
  String toString() {
    return 'CategoryEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(ProductsCategoryParam productsCategoryParam)
        getProductsCategory,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(ProductsCategoryParam productsCategoryParam)?
        getProductsCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetProductsCategory value) getProductsCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetProductsCategory value)? getProductsCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategories implements CategoryEvent {
  const factory GetCategories() = _$GetCategories;
}

/// @nodoc
abstract class $GetProductsCategoryCopyWith<$Res> {
  factory $GetProductsCategoryCopyWith(
          GetProductsCategory value, $Res Function(GetProductsCategory) then) =
      _$GetProductsCategoryCopyWithImpl<$Res>;
  $Res call({ProductsCategoryParam productsCategoryParam});
}

/// @nodoc
class _$GetProductsCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements $GetProductsCategoryCopyWith<$Res> {
  _$GetProductsCategoryCopyWithImpl(
      GetProductsCategory _value, $Res Function(GetProductsCategory) _then)
      : super(_value, (v) => _then(v as GetProductsCategory));

  @override
  GetProductsCategory get _value => super._value as GetProductsCategory;

  @override
  $Res call({
    Object? productsCategoryParam = freezed,
  }) {
    return _then(GetProductsCategory(
      productsCategoryParam == freezed
          ? _value.productsCategoryParam
          : productsCategoryParam // ignore: cast_nullable_to_non_nullable
              as ProductsCategoryParam,
    ));
  }
}

/// @nodoc

class _$GetProductsCategory implements GetProductsCategory {
  const _$GetProductsCategory(this.productsCategoryParam);

  @override
  final ProductsCategoryParam productsCategoryParam;

  @override
  String toString() {
    return 'CategoryEvent.getProductsCategory(productsCategoryParam: $productsCategoryParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProductsCategory &&
            (identical(other.productsCategoryParam, productsCategoryParam) ||
                const DeepCollectionEquality().equals(
                    other.productsCategoryParam, productsCategoryParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productsCategoryParam);

  @JsonKey(ignore: true)
  @override
  $GetProductsCategoryCopyWith<GetProductsCategory> get copyWith =>
      _$GetProductsCategoryCopyWithImpl<GetProductsCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(ProductsCategoryParam productsCategoryParam)
        getProductsCategory,
  }) {
    return getProductsCategory(productsCategoryParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(ProductsCategoryParam productsCategoryParam)?
        getProductsCategory,
    required TResult orElse(),
  }) {
    if (getProductsCategory != null) {
      return getProductsCategory(productsCategoryParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetProductsCategory value) getProductsCategory,
  }) {
    return getProductsCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetProductsCategory value)? getProductsCategory,
    required TResult orElse(),
  }) {
    if (getProductsCategory != null) {
      return getProductsCategory(this);
    }
    return orElse();
  }
}

abstract class GetProductsCategory implements CategoryEvent {
  const factory GetProductsCategory(
      ProductsCategoryParam productsCategoryParam) = _$GetProductsCategory;

  ProductsCategoryParam get productsCategoryParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductsCategoryCopyWith<GetProductsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  InitCategory initCategory() {
    return const InitCategory();
  }

  LoadingCategory loadingCategory() {
    return const LoadingCategory();
  }

  LoadedCategories loadedCategories({CategoryListEntity? categoryListEntity}) {
    return LoadedCategories(
      categoryListEntity: categoryListEntity,
    );
  }

  LoadedProductsCategory loadedProductsCategory(
      {ProductListEntity? productListEntity}) {
    return LoadedProductsCategory(
      productListEntity: productListEntity,
    );
  }

  ErrorCategory errorCategory(
      {AppErrors? error, required void Function() callback}) {
    return ErrorCategory(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;
}

/// @nodoc
abstract class $InitCategoryCopyWith<$Res> {
  factory $InitCategoryCopyWith(
          InitCategory value, $Res Function(InitCategory) then) =
      _$InitCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCategoryCopyWithImpl<$Res> extends _$CategoryStateCopyWithImpl<$Res>
    implements $InitCategoryCopyWith<$Res> {
  _$InitCategoryCopyWithImpl(
      InitCategory _value, $Res Function(InitCategory) _then)
      : super(_value, (v) => _then(v as InitCategory));

  @override
  InitCategory get _value => super._value as InitCategory;
}

/// @nodoc

class _$InitCategory implements InitCategory {
  const _$InitCategory();

  @override
  String toString() {
    return 'CategoryState.initCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) {
    return initCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) {
    if (initCategory != null) {
      return initCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) {
    return initCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) {
    if (initCategory != null) {
      return initCategory(this);
    }
    return orElse();
  }
}

abstract class InitCategory implements CategoryState {
  const factory InitCategory() = _$InitCategory;
}

/// @nodoc
abstract class $LoadingCategoryCopyWith<$Res> {
  factory $LoadingCategoryCopyWith(
          LoadingCategory value, $Res Function(LoadingCategory) then) =
      _$LoadingCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements $LoadingCategoryCopyWith<$Res> {
  _$LoadingCategoryCopyWithImpl(
      LoadingCategory _value, $Res Function(LoadingCategory) _then)
      : super(_value, (v) => _then(v as LoadingCategory));

  @override
  LoadingCategory get _value => super._value as LoadingCategory;
}

/// @nodoc

class _$LoadingCategory implements LoadingCategory {
  const _$LoadingCategory();

  @override
  String toString() {
    return 'CategoryState.loadingCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) {
    return loadingCategory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadingCategory != null) {
      return loadingCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) {
    return loadingCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadingCategory != null) {
      return loadingCategory(this);
    }
    return orElse();
  }
}

abstract class LoadingCategory implements CategoryState {
  const factory LoadingCategory() = _$LoadingCategory;
}

/// @nodoc
abstract class $LoadedCategoriesCopyWith<$Res> {
  factory $LoadedCategoriesCopyWith(
          LoadedCategories value, $Res Function(LoadedCategories) then) =
      _$LoadedCategoriesCopyWithImpl<$Res>;
  $Res call({CategoryListEntity? categoryListEntity});
}

/// @nodoc
class _$LoadedCategoriesCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements $LoadedCategoriesCopyWith<$Res> {
  _$LoadedCategoriesCopyWithImpl(
      LoadedCategories _value, $Res Function(LoadedCategories) _then)
      : super(_value, (v) => _then(v as LoadedCategories));

  @override
  LoadedCategories get _value => super._value as LoadedCategories;

  @override
  $Res call({
    Object? categoryListEntity = freezed,
  }) {
    return _then(LoadedCategories(
      categoryListEntity: categoryListEntity == freezed
          ? _value.categoryListEntity
          : categoryListEntity // ignore: cast_nullable_to_non_nullable
              as CategoryListEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedCategories implements LoadedCategories {
  const _$LoadedCategories({this.categoryListEntity});

  @override
  final CategoryListEntity? categoryListEntity;

  @override
  String toString() {
    return 'CategoryState.loadedCategories(categoryListEntity: $categoryListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedCategories &&
            (identical(other.categoryListEntity, categoryListEntity) ||
                const DeepCollectionEquality()
                    .equals(other.categoryListEntity, categoryListEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryListEntity);

  @JsonKey(ignore: true)
  @override
  $LoadedCategoriesCopyWith<LoadedCategories> get copyWith =>
      _$LoadedCategoriesCopyWithImpl<LoadedCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) {
    return loadedCategories(categoryListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(categoryListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class LoadedCategories implements CategoryState {
  const factory LoadedCategories({CategoryListEntity? categoryListEntity}) =
      _$LoadedCategories;

  CategoryListEntity? get categoryListEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCategoriesCopyWith<LoadedCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedProductsCategoryCopyWith<$Res> {
  factory $LoadedProductsCategoryCopyWith(LoadedProductsCategory value,
          $Res Function(LoadedProductsCategory) then) =
      _$LoadedProductsCategoryCopyWithImpl<$Res>;
  $Res call({ProductListEntity? productListEntity});
}

/// @nodoc
class _$LoadedProductsCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements $LoadedProductsCategoryCopyWith<$Res> {
  _$LoadedProductsCategoryCopyWithImpl(LoadedProductsCategory _value,
      $Res Function(LoadedProductsCategory) _then)
      : super(_value, (v) => _then(v as LoadedProductsCategory));

  @override
  LoadedProductsCategory get _value => super._value as LoadedProductsCategory;

  @override
  $Res call({
    Object? productListEntity = freezed,
  }) {
    return _then(LoadedProductsCategory(
      productListEntity: productListEntity == freezed
          ? _value.productListEntity
          : productListEntity // ignore: cast_nullable_to_non_nullable
              as ProductListEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedProductsCategory implements LoadedProductsCategory {
  const _$LoadedProductsCategory({this.productListEntity});

  @override
  final ProductListEntity? productListEntity;

  @override
  String toString() {
    return 'CategoryState.loadedProductsCategory(productListEntity: $productListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedProductsCategory &&
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
  $LoadedProductsCategoryCopyWith<LoadedProductsCategory> get copyWith =>
      _$LoadedProductsCategoryCopyWithImpl<LoadedProductsCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) {
    return loadedProductsCategory(productListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadedProductsCategory != null) {
      return loadedProductsCategory(productListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) {
    return loadedProductsCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) {
    if (loadedProductsCategory != null) {
      return loadedProductsCategory(this);
    }
    return orElse();
  }
}

abstract class LoadedProductsCategory implements CategoryState {
  const factory LoadedProductsCategory({ProductListEntity? productListEntity}) =
      _$LoadedProductsCategory;

  ProductListEntity? get productListEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedProductsCategoryCopyWith<LoadedProductsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCategoryCopyWith<$Res> {
  factory $ErrorCategoryCopyWith(
          ErrorCategory value, $Res Function(ErrorCategory) then) =
      _$ErrorCategoryCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorCategoryCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements $ErrorCategoryCopyWith<$Res> {
  _$ErrorCategoryCopyWithImpl(
      ErrorCategory _value, $Res Function(ErrorCategory) _then)
      : super(_value, (v) => _then(v as ErrorCategory));

  @override
  ErrorCategory get _value => super._value as ErrorCategory;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ErrorCategory(
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

class _$ErrorCategory implements ErrorCategory {
  const _$ErrorCategory({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'CategoryState.errorCategory(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorCategory &&
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
  $ErrorCategoryCopyWith<ErrorCategory> get copyWith =>
      _$ErrorCategoryCopyWithImpl<ErrorCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initCategory,
    required TResult Function() loadingCategory,
    required TResult Function(CategoryListEntity? categoryListEntity)
        loadedCategories,
    required TResult Function(ProductListEntity? productListEntity)
        loadedProductsCategory,
    required TResult Function(AppErrors? error, void Function() callback)
        errorCategory,
  }) {
    return errorCategory(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initCategory,
    TResult Function()? loadingCategory,
    TResult Function(CategoryListEntity? categoryListEntity)? loadedCategories,
    TResult Function(ProductListEntity? productListEntity)?
        loadedProductsCategory,
    TResult Function(AppErrors? error, void Function() callback)? errorCategory,
    required TResult orElse(),
  }) {
    if (errorCategory != null) {
      return errorCategory(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCategory value) initCategory,
    required TResult Function(LoadingCategory value) loadingCategory,
    required TResult Function(LoadedCategories value) loadedCategories,
    required TResult Function(LoadedProductsCategory value)
        loadedProductsCategory,
    required TResult Function(ErrorCategory value) errorCategory,
  }) {
    return errorCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCategory value)? initCategory,
    TResult Function(LoadingCategory value)? loadingCategory,
    TResult Function(LoadedCategories value)? loadedCategories,
    TResult Function(LoadedProductsCategory value)? loadedProductsCategory,
    TResult Function(ErrorCategory value)? errorCategory,
    required TResult orElse(),
  }) {
    if (errorCategory != null) {
      return errorCategory(this);
    }
    return orElse();
  }
}

abstract class ErrorCategory implements CategoryState {
  const factory ErrorCategory(
      {AppErrors? error, required void Function() callback}) = _$ErrorCategory;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCategoryCopyWith<ErrorCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
