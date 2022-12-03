// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  GetHome getHome() {
    return const GetHome();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHome value) getHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHome value)? getHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $GetHomeCopyWith<$Res> {
  factory $GetHomeCopyWith(GetHome value, $Res Function(GetHome) then) =
      _$GetHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHomeCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $GetHomeCopyWith<$Res> {
  _$GetHomeCopyWithImpl(GetHome _value, $Res Function(GetHome) _then)
      : super(_value, (v) => _then(v as GetHome));

  @override
  GetHome get _value => super._value as GetHome;
}

/// @nodoc

class _$GetHome implements GetHome {
  const _$GetHome();

  @override
  String toString() {
    return 'HomeEvent.getHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
  }) {
    return getHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHome value) getHome,
  }) {
    return getHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHome value)? getHome,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome(this);
    }
    return orElse();
  }
}

abstract class GetHome implements HomeEvent {
  const factory GetHome() = _$GetHome;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  InitHome initHome() {
    return const InitHome();
  }

  LoadingHome loadingHome() {
    return const LoadingHome();
  }

  LoadedHome loadedHome({HomeInitEntity? homeInitEntity}) {
    return LoadedHome(
      homeInitEntity: homeInitEntity,
    );
  }

  ErrorHome errorHome({AppErrors? error, required void Function() callback}) {
    return ErrorHome(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initHome,
    required TResult Function() loadingHome,
    required TResult Function(HomeInitEntity? homeInitEntity) loadedHome,
    required TResult Function(AppErrors? error, void Function() callback)
        errorHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initHome,
    TResult Function()? loadingHome,
    TResult Function(HomeInitEntity? homeInitEntity)? loadedHome,
    TResult Function(AppErrors? error, void Function() callback)? errorHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHome value) initHome,
    required TResult Function(LoadingHome value) loadingHome,
    required TResult Function(LoadedHome value) loadedHome,
    required TResult Function(ErrorHome value) errorHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHome value)? initHome,
    TResult Function(LoadingHome value)? loadingHome,
    TResult Function(LoadedHome value)? loadedHome,
    TResult Function(ErrorHome value)? errorHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $InitHomeCopyWith<$Res> {
  factory $InitHomeCopyWith(InitHome value, $Res Function(InitHome) then) =
      _$InitHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitHomeCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $InitHomeCopyWith<$Res> {
  _$InitHomeCopyWithImpl(InitHome _value, $Res Function(InitHome) _then)
      : super(_value, (v) => _then(v as InitHome));

  @override
  InitHome get _value => super._value as InitHome;
}

/// @nodoc

class _$InitHome implements InitHome {
  const _$InitHome();

  @override
  String toString() {
    return 'HomeState.initHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initHome,
    required TResult Function() loadingHome,
    required TResult Function(HomeInitEntity? homeInitEntity) loadedHome,
    required TResult Function(AppErrors? error, void Function() callback)
        errorHome,
  }) {
    return initHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initHome,
    TResult Function()? loadingHome,
    TResult Function(HomeInitEntity? homeInitEntity)? loadedHome,
    TResult Function(AppErrors? error, void Function() callback)? errorHome,
    required TResult orElse(),
  }) {
    if (initHome != null) {
      return initHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHome value) initHome,
    required TResult Function(LoadingHome value) loadingHome,
    required TResult Function(LoadedHome value) loadedHome,
    required TResult Function(ErrorHome value) errorHome,
  }) {
    return initHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHome value)? initHome,
    TResult Function(LoadingHome value)? loadingHome,
    TResult Function(LoadedHome value)? loadedHome,
    TResult Function(ErrorHome value)? errorHome,
    required TResult orElse(),
  }) {
    if (initHome != null) {
      return initHome(this);
    }
    return orElse();
  }
}

abstract class InitHome implements HomeState {
  const factory InitHome() = _$InitHome;
}

/// @nodoc
abstract class $LoadingHomeCopyWith<$Res> {
  factory $LoadingHomeCopyWith(
          LoadingHome value, $Res Function(LoadingHome) then) =
      _$LoadingHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingHomeCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingHomeCopyWith<$Res> {
  _$LoadingHomeCopyWithImpl(
      LoadingHome _value, $Res Function(LoadingHome) _then)
      : super(_value, (v) => _then(v as LoadingHome));

  @override
  LoadingHome get _value => super._value as LoadingHome;
}

/// @nodoc

class _$LoadingHome implements LoadingHome {
  const _$LoadingHome();

  @override
  String toString() {
    return 'HomeState.loadingHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initHome,
    required TResult Function() loadingHome,
    required TResult Function(HomeInitEntity? homeInitEntity) loadedHome,
    required TResult Function(AppErrors? error, void Function() callback)
        errorHome,
  }) {
    return loadingHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initHome,
    TResult Function()? loadingHome,
    TResult Function(HomeInitEntity? homeInitEntity)? loadedHome,
    TResult Function(AppErrors? error, void Function() callback)? errorHome,
    required TResult orElse(),
  }) {
    if (loadingHome != null) {
      return loadingHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHome value) initHome,
    required TResult Function(LoadingHome value) loadingHome,
    required TResult Function(LoadedHome value) loadedHome,
    required TResult Function(ErrorHome value) errorHome,
  }) {
    return loadingHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHome value)? initHome,
    TResult Function(LoadingHome value)? loadingHome,
    TResult Function(LoadedHome value)? loadedHome,
    TResult Function(ErrorHome value)? errorHome,
    required TResult orElse(),
  }) {
    if (loadingHome != null) {
      return loadingHome(this);
    }
    return orElse();
  }
}

abstract class LoadingHome implements HomeState {
  const factory LoadingHome() = _$LoadingHome;
}

/// @nodoc
abstract class $LoadedHomeCopyWith<$Res> {
  factory $LoadedHomeCopyWith(
          LoadedHome value, $Res Function(LoadedHome) then) =
      _$LoadedHomeCopyWithImpl<$Res>;
  $Res call({HomeInitEntity? homeInitEntity});
}

/// @nodoc
class _$LoadedHomeCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedHomeCopyWith<$Res> {
  _$LoadedHomeCopyWithImpl(LoadedHome _value, $Res Function(LoadedHome) _then)
      : super(_value, (v) => _then(v as LoadedHome));

  @override
  LoadedHome get _value => super._value as LoadedHome;

  @override
  $Res call({
    Object? homeInitEntity = freezed,
  }) {
    return _then(LoadedHome(
      homeInitEntity: homeInitEntity == freezed
          ? _value.homeInitEntity
          : homeInitEntity // ignore: cast_nullable_to_non_nullable
              as HomeInitEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedHome implements LoadedHome {
  const _$LoadedHome({this.homeInitEntity});

  @override
  final HomeInitEntity? homeInitEntity;

  @override
  String toString() {
    return 'HomeState.loadedHome(homeInitEntity: $homeInitEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedHome &&
            (identical(other.homeInitEntity, homeInitEntity) ||
                const DeepCollectionEquality()
                    .equals(other.homeInitEntity, homeInitEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeInitEntity);

  @JsonKey(ignore: true)
  @override
  $LoadedHomeCopyWith<LoadedHome> get copyWith =>
      _$LoadedHomeCopyWithImpl<LoadedHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initHome,
    required TResult Function() loadingHome,
    required TResult Function(HomeInitEntity? homeInitEntity) loadedHome,
    required TResult Function(AppErrors? error, void Function() callback)
        errorHome,
  }) {
    return loadedHome(homeInitEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initHome,
    TResult Function()? loadingHome,
    TResult Function(HomeInitEntity? homeInitEntity)? loadedHome,
    TResult Function(AppErrors? error, void Function() callback)? errorHome,
    required TResult orElse(),
  }) {
    if (loadedHome != null) {
      return loadedHome(homeInitEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHome value) initHome,
    required TResult Function(LoadingHome value) loadingHome,
    required TResult Function(LoadedHome value) loadedHome,
    required TResult Function(ErrorHome value) errorHome,
  }) {
    return loadedHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHome value)? initHome,
    TResult Function(LoadingHome value)? loadingHome,
    TResult Function(LoadedHome value)? loadedHome,
    TResult Function(ErrorHome value)? errorHome,
    required TResult orElse(),
  }) {
    if (loadedHome != null) {
      return loadedHome(this);
    }
    return orElse();
  }
}

abstract class LoadedHome implements HomeState {
  const factory LoadedHome({HomeInitEntity? homeInitEntity}) = _$LoadedHome;

  HomeInitEntity? get homeInitEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedHomeCopyWith<LoadedHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHomeCopyWith<$Res> {
  factory $ErrorHomeCopyWith(ErrorHome value, $Res Function(ErrorHome) then) =
      _$ErrorHomeCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorHomeCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ErrorHomeCopyWith<$Res> {
  _$ErrorHomeCopyWithImpl(ErrorHome _value, $Res Function(ErrorHome) _then)
      : super(_value, (v) => _then(v as ErrorHome));

  @override
  ErrorHome get _value => super._value as ErrorHome;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ErrorHome(
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

class _$ErrorHome implements ErrorHome {
  const _$ErrorHome({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'HomeState.errorHome(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorHome &&
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
  $ErrorHomeCopyWith<ErrorHome> get copyWith =>
      _$ErrorHomeCopyWithImpl<ErrorHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initHome,
    required TResult Function() loadingHome,
    required TResult Function(HomeInitEntity? homeInitEntity) loadedHome,
    required TResult Function(AppErrors? error, void Function() callback)
        errorHome,
  }) {
    return errorHome(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initHome,
    TResult Function()? loadingHome,
    TResult Function(HomeInitEntity? homeInitEntity)? loadedHome,
    TResult Function(AppErrors? error, void Function() callback)? errorHome,
    required TResult orElse(),
  }) {
    if (errorHome != null) {
      return errorHome(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitHome value) initHome,
    required TResult Function(LoadingHome value) loadingHome,
    required TResult Function(LoadedHome value) loadedHome,
    required TResult Function(ErrorHome value) errorHome,
  }) {
    return errorHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitHome value)? initHome,
    TResult Function(LoadingHome value)? loadingHome,
    TResult Function(LoadedHome value)? loadedHome,
    TResult Function(ErrorHome value)? errorHome,
    required TResult orElse(),
  }) {
    if (errorHome != null) {
      return errorHome(this);
    }
    return orElse();
  }
}

abstract class ErrorHome implements HomeState {
  const factory ErrorHome(
      {AppErrors? error, required void Function() callback}) = _$ErrorHome;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorHomeCopyWith<ErrorHome> get copyWith =>
      throw _privateConstructorUsedError;
}
