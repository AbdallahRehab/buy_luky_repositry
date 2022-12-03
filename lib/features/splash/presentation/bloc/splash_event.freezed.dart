// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  InitSplashEvent initSplashEvent({CancelToken? cancelToken}) {
    return InitSplashEvent(
      cancelToken: cancelToken,
    );
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CancelToken? cancelToken) initSplashEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CancelToken? cancelToken)? initSplashEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSplashEvent value) initSplashEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSplashEvent value)? initSplashEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashEventCopyWith<SplashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
  $Res call({CancelToken? cancelToken});
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;

  @override
  $Res call({
    Object? cancelToken = freezed,
  }) {
    return _then(_value.copyWith(
      cancelToken: cancelToken == freezed
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc
abstract class $InitSplashEventCopyWith<$Res>
    implements $SplashEventCopyWith<$Res> {
  factory $InitSplashEventCopyWith(
          InitSplashEvent value, $Res Function(InitSplashEvent) then) =
      _$InitSplashEventCopyWithImpl<$Res>;
  @override
  $Res call({CancelToken? cancelToken});
}

/// @nodoc
class _$InitSplashEventCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $InitSplashEventCopyWith<$Res> {
  _$InitSplashEventCopyWithImpl(
      InitSplashEvent _value, $Res Function(InitSplashEvent) _then)
      : super(_value, (v) => _then(v as InitSplashEvent));

  @override
  InitSplashEvent get _value => super._value as InitSplashEvent;

  @override
  $Res call({
    Object? cancelToken = freezed,
  }) {
    return _then(InitSplashEvent(
      cancelToken: cancelToken == freezed
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$InitSplashEvent implements InitSplashEvent {
  const _$InitSplashEvent({this.cancelToken});

  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'SplashEvent.initSplashEvent(cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitSplashEvent &&
            (identical(other.cancelToken, cancelToken) ||
                const DeepCollectionEquality()
                    .equals(other.cancelToken, cancelToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cancelToken);

  @JsonKey(ignore: true)
  @override
  $InitSplashEventCopyWith<InitSplashEvent> get copyWith =>
      _$InitSplashEventCopyWithImpl<InitSplashEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CancelToken? cancelToken) initSplashEvent,
  }) {
    return initSplashEvent(cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CancelToken? cancelToken)? initSplashEvent,
    required TResult orElse(),
  }) {
    if (initSplashEvent != null) {
      return initSplashEvent(cancelToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSplashEvent value) initSplashEvent,
  }) {
    return initSplashEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSplashEvent value)? initSplashEvent,
    required TResult orElse(),
  }) {
    if (initSplashEvent != null) {
      return initSplashEvent(this);
    }
    return orElse();
  }
}

abstract class InitSplashEvent implements SplashEvent {
  const factory InitSplashEvent({CancelToken? cancelToken}) = _$InitSplashEvent;

  @override
  CancelToken? get cancelToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitSplashEventCopyWith<InitSplashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
