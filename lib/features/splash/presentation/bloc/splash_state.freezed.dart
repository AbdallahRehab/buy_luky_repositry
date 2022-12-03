// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity,
      HomeInitEntity? homeInitEntity,
      bool? locked,
      String? message}) {
    return Loaded(
      checkAppVersion: checkAppVersion,
      profileEntity: profileEntity,
      homeInitEntity: homeInitEntity,
      locked: locked,
      message: message,
    );
  }

  NeedUpdateError needUpdateError({required String appLink}) {
    return NeedUpdateError(
      appLink: appLink,
    );
  }

  SplashError splashError({AppErrors? error, void Function()? callback}) {
    return SplashError(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SplashState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SplashState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity,
      HomeInitEntity? homeInitEntity,
      bool? locked,
      String? message});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? checkAppVersion = freezed,
    Object? profileEntity = freezed,
    Object? homeInitEntity = freezed,
    Object? locked = freezed,
    Object? message = freezed,
  }) {
    return _then(Loaded(
      checkAppVersion: checkAppVersion == freezed
          ? _value.checkAppVersion
          : checkAppVersion // ignore: cast_nullable_to_non_nullable
              as CheckAppVersionUpdatesEntity?,
      profileEntity: profileEntity == freezed
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      homeInitEntity: homeInitEntity == freezed
          ? _value.homeInitEntity
          : homeInitEntity // ignore: cast_nullable_to_non_nullable
              as HomeInitEntity?,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(
      {this.checkAppVersion,
      this.profileEntity,
      this.homeInitEntity,
      this.locked,
      this.message});

  @override
  final CheckAppVersionUpdatesEntity? checkAppVersion;
  @override
  final ProfileEntity? profileEntity;
  @override
  final HomeInitEntity? homeInitEntity;
  @override
  final bool? locked;
  @override
  final String? message;

  @override
  String toString() {
    return 'SplashState.loaded(checkAppVersion: $checkAppVersion, profileEntity: $profileEntity, homeInitEntity: $homeInitEntity, locked: $locked, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.checkAppVersion, checkAppVersion) ||
                const DeepCollectionEquality()
                    .equals(other.checkAppVersion, checkAppVersion)) &&
            (identical(other.profileEntity, profileEntity) ||
                const DeepCollectionEquality()
                    .equals(other.profileEntity, profileEntity)) &&
            (identical(other.homeInitEntity, homeInitEntity) ||
                const DeepCollectionEquality()
                    .equals(other.homeInitEntity, homeInitEntity)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(checkAppVersion) ^
      const DeepCollectionEquality().hash(profileEntity) ^
      const DeepCollectionEquality().hash(homeInitEntity) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) {
    return loaded(
        checkAppVersion, profileEntity, homeInitEntity, locked, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          checkAppVersion, profileEntity, homeInitEntity, locked, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SplashState {
  const factory Loaded(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity,
      HomeInitEntity? homeInitEntity,
      bool? locked,
      String? message}) = _$Loaded;

  CheckAppVersionUpdatesEntity? get checkAppVersion =>
      throw _privateConstructorUsedError;
  ProfileEntity? get profileEntity => throw _privateConstructorUsedError;
  HomeInitEntity? get homeInitEntity => throw _privateConstructorUsedError;
  bool? get locked => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NeedUpdateErrorCopyWith<$Res> {
  factory $NeedUpdateErrorCopyWith(
          NeedUpdateError value, $Res Function(NeedUpdateError) then) =
      _$NeedUpdateErrorCopyWithImpl<$Res>;
  $Res call({String appLink});
}

/// @nodoc
class _$NeedUpdateErrorCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements $NeedUpdateErrorCopyWith<$Res> {
  _$NeedUpdateErrorCopyWithImpl(
      NeedUpdateError _value, $Res Function(NeedUpdateError) _then)
      : super(_value, (v) => _then(v as NeedUpdateError));

  @override
  NeedUpdateError get _value => super._value as NeedUpdateError;

  @override
  $Res call({
    Object? appLink = freezed,
  }) {
    return _then(NeedUpdateError(
      appLink: appLink == freezed
          ? _value.appLink
          : appLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NeedUpdateError implements NeedUpdateError {
  const _$NeedUpdateError({required this.appLink});

  @override
  final String appLink;

  @override
  String toString() {
    return 'SplashState.needUpdateError(appLink: $appLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NeedUpdateError &&
            (identical(other.appLink, appLink) ||
                const DeepCollectionEquality().equals(other.appLink, appLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appLink);

  @JsonKey(ignore: true)
  @override
  $NeedUpdateErrorCopyWith<NeedUpdateError> get copyWith =>
      _$NeedUpdateErrorCopyWithImpl<NeedUpdateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) {
    return needUpdateError(appLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) {
    if (needUpdateError != null) {
      return needUpdateError(appLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) {
    return needUpdateError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) {
    if (needUpdateError != null) {
      return needUpdateError(this);
    }
    return orElse();
  }
}

abstract class NeedUpdateError implements SplashState {
  const factory NeedUpdateError({required String appLink}) = _$NeedUpdateError;

  String get appLink => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NeedUpdateErrorCopyWith<NeedUpdateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashErrorCopyWith<$Res> {
  factory $SplashErrorCopyWith(
          SplashError value, $Res Function(SplashError) then) =
      _$SplashErrorCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function()? callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$SplashErrorCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $SplashErrorCopyWith<$Res> {
  _$SplashErrorCopyWithImpl(
      SplashError _value, $Res Function(SplashError) _then)
      : super(_value, (v) => _then(v as SplashError));

  @override
  SplashError get _value => super._value as SplashError;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(SplashError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppErrors?,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function()?,
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

class _$SplashError implements SplashError {
  const _$SplashError({this.error, this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function()? callback;

  @override
  String toString() {
    return 'SplashState.splashError(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SplashError &&
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
  $SplashErrorCopyWith<SplashError> get copyWith =>
      _$SplashErrorCopyWithImpl<SplashError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)
        loaded,
    required TResult Function(String appLink) needUpdateError,
    required TResult Function(AppErrors? error, void Function()? callback)
        splashError,
  }) {
    return splashError(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity,
            HomeInitEntity? homeInitEntity,
            bool? locked,
            String? message)?
        loaded,
    TResult Function(String appLink)? needUpdateError,
    TResult Function(AppErrors? error, void Function()? callback)? splashError,
    required TResult orElse(),
  }) {
    if (splashError != null) {
      return splashError(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(NeedUpdateError value) needUpdateError,
    required TResult Function(SplashError value) splashError,
  }) {
    return splashError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(NeedUpdateError value)? needUpdateError,
    TResult Function(SplashError value)? splashError,
    required TResult orElse(),
  }) {
    if (splashError != null) {
      return splashError(this);
    }
    return orElse();
  }
}

abstract class SplashError implements SplashState {
  const factory SplashError({AppErrors? error, void Function()? callback}) =
      _$SplashError;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function()? get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashErrorCopyWith<SplashError> get copyWith =>
      throw _privateConstructorUsedError;
}
