// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  FavInitState favInitState() {
    return const FavInitState();
  }

  FavLoadingState favLoadingState() {
    return const FavLoadingState();
  }

  GetFavLoadedState getFavLoadedState({GetFavoriteEntity? favEntity}) {
    return GetFavLoadedState(
      favEntity: favEntity,
    );
  }

  FavErrorState favErrorState(
      {AppErrors? error, required void Function() callback}) {
    return FavErrorState(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favInitState,
    required TResult Function() favLoadingState,
    required TResult Function(GetFavoriteEntity? favEntity) getFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favInitState,
    TResult Function()? favLoadingState,
    TResult Function(GetFavoriteEntity? favEntity)? getFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)? favErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavInitState value) favInitState,
    required TResult Function(FavLoadingState value) favLoadingState,
    required TResult Function(GetFavLoadedState value) getFavLoadedState,
    required TResult Function(FavErrorState value) favErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitState value)? favInitState,
    TResult Function(FavLoadingState value)? favLoadingState,
    TResult Function(GetFavLoadedState value)? getFavLoadedState,
    TResult Function(FavErrorState value)? favErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class $FavInitStateCopyWith<$Res> {
  factory $FavInitStateCopyWith(
          FavInitState value, $Res Function(FavInitState) then) =
      _$FavInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavInitStateCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavInitStateCopyWith<$Res> {
  _$FavInitStateCopyWithImpl(
      FavInitState _value, $Res Function(FavInitState) _then)
      : super(_value, (v) => _then(v as FavInitState));

  @override
  FavInitState get _value => super._value as FavInitState;
}

/// @nodoc

class _$FavInitState implements FavInitState {
  const _$FavInitState();

  @override
  String toString() {
    return 'FavoriteState.favInitState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favInitState,
    required TResult Function() favLoadingState,
    required TResult Function(GetFavoriteEntity? favEntity) getFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favErrorState,
  }) {
    return favInitState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favInitState,
    TResult Function()? favLoadingState,
    TResult Function(GetFavoriteEntity? favEntity)? getFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)? favErrorState,
    required TResult orElse(),
  }) {
    if (favInitState != null) {
      return favInitState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavInitState value) favInitState,
    required TResult Function(FavLoadingState value) favLoadingState,
    required TResult Function(GetFavLoadedState value) getFavLoadedState,
    required TResult Function(FavErrorState value) favErrorState,
  }) {
    return favInitState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitState value)? favInitState,
    TResult Function(FavLoadingState value)? favLoadingState,
    TResult Function(GetFavLoadedState value)? getFavLoadedState,
    TResult Function(FavErrorState value)? favErrorState,
    required TResult orElse(),
  }) {
    if (favInitState != null) {
      return favInitState(this);
    }
    return orElse();
  }
}

abstract class FavInitState implements FavoriteState {
  const factory FavInitState() = _$FavInitState;
}

/// @nodoc
abstract class $FavLoadingStateCopyWith<$Res> {
  factory $FavLoadingStateCopyWith(
          FavLoadingState value, $Res Function(FavLoadingState) then) =
      _$FavLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavLoadingStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavLoadingStateCopyWith<$Res> {
  _$FavLoadingStateCopyWithImpl(
      FavLoadingState _value, $Res Function(FavLoadingState) _then)
      : super(_value, (v) => _then(v as FavLoadingState));

  @override
  FavLoadingState get _value => super._value as FavLoadingState;
}

/// @nodoc

class _$FavLoadingState implements FavLoadingState {
  const _$FavLoadingState();

  @override
  String toString() {
    return 'FavoriteState.favLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favInitState,
    required TResult Function() favLoadingState,
    required TResult Function(GetFavoriteEntity? favEntity) getFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favErrorState,
  }) {
    return favLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favInitState,
    TResult Function()? favLoadingState,
    TResult Function(GetFavoriteEntity? favEntity)? getFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)? favErrorState,
    required TResult orElse(),
  }) {
    if (favLoadingState != null) {
      return favLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavInitState value) favInitState,
    required TResult Function(FavLoadingState value) favLoadingState,
    required TResult Function(GetFavLoadedState value) getFavLoadedState,
    required TResult Function(FavErrorState value) favErrorState,
  }) {
    return favLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitState value)? favInitState,
    TResult Function(FavLoadingState value)? favLoadingState,
    TResult Function(GetFavLoadedState value)? getFavLoadedState,
    TResult Function(FavErrorState value)? favErrorState,
    required TResult orElse(),
  }) {
    if (favLoadingState != null) {
      return favLoadingState(this);
    }
    return orElse();
  }
}

abstract class FavLoadingState implements FavoriteState {
  const factory FavLoadingState() = _$FavLoadingState;
}

/// @nodoc
abstract class $GetFavLoadedStateCopyWith<$Res> {
  factory $GetFavLoadedStateCopyWith(
          GetFavLoadedState value, $Res Function(GetFavLoadedState) then) =
      _$GetFavLoadedStateCopyWithImpl<$Res>;
  $Res call({GetFavoriteEntity? favEntity});
}

/// @nodoc
class _$GetFavLoadedStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $GetFavLoadedStateCopyWith<$Res> {
  _$GetFavLoadedStateCopyWithImpl(
      GetFavLoadedState _value, $Res Function(GetFavLoadedState) _then)
      : super(_value, (v) => _then(v as GetFavLoadedState));

  @override
  GetFavLoadedState get _value => super._value as GetFavLoadedState;

  @override
  $Res call({
    Object? favEntity = freezed,
  }) {
    return _then(GetFavLoadedState(
      favEntity: favEntity == freezed
          ? _value.favEntity
          : favEntity // ignore: cast_nullable_to_non_nullable
              as GetFavoriteEntity?,
    ));
  }
}

/// @nodoc

class _$GetFavLoadedState implements GetFavLoadedState {
  const _$GetFavLoadedState({this.favEntity});

  @override
  final GetFavoriteEntity? favEntity;

  @override
  String toString() {
    return 'FavoriteState.getFavLoadedState(favEntity: $favEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFavLoadedState &&
            (identical(other.favEntity, favEntity) ||
                const DeepCollectionEquality()
                    .equals(other.favEntity, favEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favEntity);

  @JsonKey(ignore: true)
  @override
  $GetFavLoadedStateCopyWith<GetFavLoadedState> get copyWith =>
      _$GetFavLoadedStateCopyWithImpl<GetFavLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favInitState,
    required TResult Function() favLoadingState,
    required TResult Function(GetFavoriteEntity? favEntity) getFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favErrorState,
  }) {
    return getFavLoadedState(favEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favInitState,
    TResult Function()? favLoadingState,
    TResult Function(GetFavoriteEntity? favEntity)? getFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)? favErrorState,
    required TResult orElse(),
  }) {
    if (getFavLoadedState != null) {
      return getFavLoadedState(favEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavInitState value) favInitState,
    required TResult Function(FavLoadingState value) favLoadingState,
    required TResult Function(GetFavLoadedState value) getFavLoadedState,
    required TResult Function(FavErrorState value) favErrorState,
  }) {
    return getFavLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitState value)? favInitState,
    TResult Function(FavLoadingState value)? favLoadingState,
    TResult Function(GetFavLoadedState value)? getFavLoadedState,
    TResult Function(FavErrorState value)? favErrorState,
    required TResult orElse(),
  }) {
    if (getFavLoadedState != null) {
      return getFavLoadedState(this);
    }
    return orElse();
  }
}

abstract class GetFavLoadedState implements FavoriteState {
  const factory GetFavLoadedState({GetFavoriteEntity? favEntity}) =
      _$GetFavLoadedState;

  GetFavoriteEntity? get favEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFavLoadedStateCopyWith<GetFavLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavErrorStateCopyWith<$Res> {
  factory $FavErrorStateCopyWith(
          FavErrorState value, $Res Function(FavErrorState) then) =
      _$FavErrorStateCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$FavErrorStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavErrorStateCopyWith<$Res> {
  _$FavErrorStateCopyWithImpl(
      FavErrorState _value, $Res Function(FavErrorState) _then)
      : super(_value, (v) => _then(v as FavErrorState));

  @override
  FavErrorState get _value => super._value as FavErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(FavErrorState(
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

class _$FavErrorState implements FavErrorState {
  const _$FavErrorState({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'FavoriteState.favErrorState(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavErrorState &&
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
  $FavErrorStateCopyWith<FavErrorState> get copyWith =>
      _$FavErrorStateCopyWithImpl<FavErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favInitState,
    required TResult Function() favLoadingState,
    required TResult Function(GetFavoriteEntity? favEntity) getFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favErrorState,
  }) {
    return favErrorState(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favInitState,
    TResult Function()? favLoadingState,
    TResult Function(GetFavoriteEntity? favEntity)? getFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)? favErrorState,
    required TResult orElse(),
  }) {
    if (favErrorState != null) {
      return favErrorState(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavInitState value) favInitState,
    required TResult Function(FavLoadingState value) favLoadingState,
    required TResult Function(GetFavLoadedState value) getFavLoadedState,
    required TResult Function(FavErrorState value) favErrorState,
  }) {
    return favErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitState value)? favInitState,
    TResult Function(FavLoadingState value)? favLoadingState,
    TResult Function(GetFavLoadedState value)? getFavLoadedState,
    TResult Function(FavErrorState value)? favErrorState,
    required TResult orElse(),
  }) {
    if (favErrorState != null) {
      return favErrorState(this);
    }
    return orElse();
  }
}

abstract class FavErrorState implements FavoriteState {
  const factory FavErrorState(
      {AppErrors? error, required void Function() callback}) = _$FavErrorState;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavErrorStateCopyWith<FavErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavoriteManageStateTearOff {
  const _$FavoriteManageStateTearOff();

  FavManageInitState favManageInitState() {
    return const FavManageInitState();
  }

  FavManageLoadingState favManageLoadingState({required int id}) {
    return FavManageLoadingState(
      id: id,
    );
  }

  AddFavLoadedState addFavLoadedState({required int id}) {
    return AddFavLoadedState(
      id: id,
    );
  }

  DeleteFavLoadedState deleteFavLoadedState({required int id}) {
    return DeleteFavLoadedState(
      id: id,
    );
  }

  FavManageErrorState favManageErrorState(
      {AppErrors? error, required void Function() callback}) {
    return FavManageErrorState(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $FavoriteManageState = _$FavoriteManageStateTearOff();

/// @nodoc
mixin _$FavoriteManageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteManageStateCopyWith<$Res> {
  factory $FavoriteManageStateCopyWith(
          FavoriteManageState value, $Res Function(FavoriteManageState) then) =
      _$FavoriteManageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteManageStateCopyWithImpl<$Res>
    implements $FavoriteManageStateCopyWith<$Res> {
  _$FavoriteManageStateCopyWithImpl(this._value, this._then);

  final FavoriteManageState _value;
  // ignore: unused_field
  final $Res Function(FavoriteManageState) _then;
}

/// @nodoc
abstract class $FavManageInitStateCopyWith<$Res> {
  factory $FavManageInitStateCopyWith(
          FavManageInitState value, $Res Function(FavManageInitState) then) =
      _$FavManageInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavManageInitStateCopyWithImpl<$Res>
    extends _$FavoriteManageStateCopyWithImpl<$Res>
    implements $FavManageInitStateCopyWith<$Res> {
  _$FavManageInitStateCopyWithImpl(
      FavManageInitState _value, $Res Function(FavManageInitState) _then)
      : super(_value, (v) => _then(v as FavManageInitState));

  @override
  FavManageInitState get _value => super._value as FavManageInitState;
}

/// @nodoc

class _$FavManageInitState implements FavManageInitState {
  const _$FavManageInitState();

  @override
  String toString() {
    return 'FavoriteManageState.favManageInitState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavManageInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) {
    return favManageInitState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageInitState != null) {
      return favManageInitState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) {
    return favManageInitState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageInitState != null) {
      return favManageInitState(this);
    }
    return orElse();
  }
}

abstract class FavManageInitState implements FavoriteManageState {
  const factory FavManageInitState() = _$FavManageInitState;
}

/// @nodoc
abstract class $FavManageLoadingStateCopyWith<$Res> {
  factory $FavManageLoadingStateCopyWith(FavManageLoadingState value,
          $Res Function(FavManageLoadingState) then) =
      _$FavManageLoadingStateCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$FavManageLoadingStateCopyWithImpl<$Res>
    extends _$FavoriteManageStateCopyWithImpl<$Res>
    implements $FavManageLoadingStateCopyWith<$Res> {
  _$FavManageLoadingStateCopyWithImpl(
      FavManageLoadingState _value, $Res Function(FavManageLoadingState) _then)
      : super(_value, (v) => _then(v as FavManageLoadingState));

  @override
  FavManageLoadingState get _value => super._value as FavManageLoadingState;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(FavManageLoadingState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FavManageLoadingState implements FavManageLoadingState {
  const _$FavManageLoadingState({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoriteManageState.favManageLoadingState(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavManageLoadingState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $FavManageLoadingStateCopyWith<FavManageLoadingState> get copyWith =>
      _$FavManageLoadingStateCopyWithImpl<FavManageLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) {
    return favManageLoadingState(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageLoadingState != null) {
      return favManageLoadingState(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) {
    return favManageLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageLoadingState != null) {
      return favManageLoadingState(this);
    }
    return orElse();
  }
}

abstract class FavManageLoadingState implements FavoriteManageState {
  const factory FavManageLoadingState({required int id}) =
      _$FavManageLoadingState;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavManageLoadingStateCopyWith<FavManageLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavLoadedStateCopyWith<$Res> {
  factory $AddFavLoadedStateCopyWith(
          AddFavLoadedState value, $Res Function(AddFavLoadedState) then) =
      _$AddFavLoadedStateCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddFavLoadedStateCopyWithImpl<$Res>
    extends _$FavoriteManageStateCopyWithImpl<$Res>
    implements $AddFavLoadedStateCopyWith<$Res> {
  _$AddFavLoadedStateCopyWithImpl(
      AddFavLoadedState _value, $Res Function(AddFavLoadedState) _then)
      : super(_value, (v) => _then(v as AddFavLoadedState));

  @override
  AddFavLoadedState get _value => super._value as AddFavLoadedState;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(AddFavLoadedState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddFavLoadedState implements AddFavLoadedState {
  const _$AddFavLoadedState({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoriteManageState.addFavLoadedState(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFavLoadedState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $AddFavLoadedStateCopyWith<AddFavLoadedState> get copyWith =>
      _$AddFavLoadedStateCopyWithImpl<AddFavLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) {
    return addFavLoadedState(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) {
    if (addFavLoadedState != null) {
      return addFavLoadedState(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) {
    return addFavLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) {
    if (addFavLoadedState != null) {
      return addFavLoadedState(this);
    }
    return orElse();
  }
}

abstract class AddFavLoadedState implements FavoriteManageState {
  const factory AddFavLoadedState({required int id}) = _$AddFavLoadedState;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFavLoadedStateCopyWith<AddFavLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFavLoadedStateCopyWith<$Res> {
  factory $DeleteFavLoadedStateCopyWith(DeleteFavLoadedState value,
          $Res Function(DeleteFavLoadedState) then) =
      _$DeleteFavLoadedStateCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DeleteFavLoadedStateCopyWithImpl<$Res>
    extends _$FavoriteManageStateCopyWithImpl<$Res>
    implements $DeleteFavLoadedStateCopyWith<$Res> {
  _$DeleteFavLoadedStateCopyWithImpl(
      DeleteFavLoadedState _value, $Res Function(DeleteFavLoadedState) _then)
      : super(_value, (v) => _then(v as DeleteFavLoadedState));

  @override
  DeleteFavLoadedState get _value => super._value as DeleteFavLoadedState;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DeleteFavLoadedState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteFavLoadedState implements DeleteFavLoadedState {
  const _$DeleteFavLoadedState({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoriteManageState.deleteFavLoadedState(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFavLoadedState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $DeleteFavLoadedStateCopyWith<DeleteFavLoadedState> get copyWith =>
      _$DeleteFavLoadedStateCopyWithImpl<DeleteFavLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) {
    return deleteFavLoadedState(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) {
    if (deleteFavLoadedState != null) {
      return deleteFavLoadedState(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) {
    return deleteFavLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) {
    if (deleteFavLoadedState != null) {
      return deleteFavLoadedState(this);
    }
    return orElse();
  }
}

abstract class DeleteFavLoadedState implements FavoriteManageState {
  const factory DeleteFavLoadedState({required int id}) =
      _$DeleteFavLoadedState;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteFavLoadedStateCopyWith<DeleteFavLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavManageErrorStateCopyWith<$Res> {
  factory $FavManageErrorStateCopyWith(
          FavManageErrorState value, $Res Function(FavManageErrorState) then) =
      _$FavManageErrorStateCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$FavManageErrorStateCopyWithImpl<$Res>
    extends _$FavoriteManageStateCopyWithImpl<$Res>
    implements $FavManageErrorStateCopyWith<$Res> {
  _$FavManageErrorStateCopyWithImpl(
      FavManageErrorState _value, $Res Function(FavManageErrorState) _then)
      : super(_value, (v) => _then(v as FavManageErrorState));

  @override
  FavManageErrorState get _value => super._value as FavManageErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(FavManageErrorState(
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

class _$FavManageErrorState implements FavManageErrorState {
  const _$FavManageErrorState({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'FavoriteManageState.favManageErrorState(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavManageErrorState &&
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
  $FavManageErrorStateCopyWith<FavManageErrorState> get copyWith =>
      _$FavManageErrorStateCopyWithImpl<FavManageErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() favManageInitState,
    required TResult Function(int id) favManageLoadingState,
    required TResult Function(int id) addFavLoadedState,
    required TResult Function(int id) deleteFavLoadedState,
    required TResult Function(AppErrors? error, void Function() callback)
        favManageErrorState,
  }) {
    return favManageErrorState(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? favManageInitState,
    TResult Function(int id)? favManageLoadingState,
    TResult Function(int id)? addFavLoadedState,
    TResult Function(int id)? deleteFavLoadedState,
    TResult Function(AppErrors? error, void Function() callback)?
        favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageErrorState != null) {
      return favManageErrorState(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavManageInitState value) favManageInitState,
    required TResult Function(FavManageLoadingState value)
        favManageLoadingState,
    required TResult Function(AddFavLoadedState value) addFavLoadedState,
    required TResult Function(DeleteFavLoadedState value) deleteFavLoadedState,
    required TResult Function(FavManageErrorState value) favManageErrorState,
  }) {
    return favManageErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavManageInitState value)? favManageInitState,
    TResult Function(FavManageLoadingState value)? favManageLoadingState,
    TResult Function(AddFavLoadedState value)? addFavLoadedState,
    TResult Function(DeleteFavLoadedState value)? deleteFavLoadedState,
    TResult Function(FavManageErrorState value)? favManageErrorState,
    required TResult orElse(),
  }) {
    if (favManageErrorState != null) {
      return favManageErrorState(this);
    }
    return orElse();
  }
}

abstract class FavManageErrorState implements FavoriteManageState {
  const factory FavManageErrorState(
      {AppErrors? error,
      required void Function() callback}) = _$FavManageErrorState;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavManageErrorStateCopyWith<FavManageErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
