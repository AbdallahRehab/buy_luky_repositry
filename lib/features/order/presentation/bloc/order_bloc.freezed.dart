// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderEventTearOff {
  const _$OrderEventTearOff();

  GetAllOrders getAllOrders() {
    return const GetAllOrders();
  }
}

/// @nodoc
const $OrderEvent = _$OrderEventTearOff();

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllOrders value) getAllOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllOrders value)? getAllOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  final OrderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEvent) _then;
}

/// @nodoc
abstract class $GetAllOrdersCopyWith<$Res> {
  factory $GetAllOrdersCopyWith(
          GetAllOrders value, $Res Function(GetAllOrders) then) =
      _$GetAllOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllOrdersCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements $GetAllOrdersCopyWith<$Res> {
  _$GetAllOrdersCopyWithImpl(
      GetAllOrders _value, $Res Function(GetAllOrders) _then)
      : super(_value, (v) => _then(v as GetAllOrders));

  @override
  GetAllOrders get _value => super._value as GetAllOrders;
}

/// @nodoc

class _$GetAllOrders implements GetAllOrders {
  const _$GetAllOrders();

  @override
  String toString() {
    return 'OrderEvent.getAllOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllOrders,
  }) {
    return getAllOrders();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllOrders,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllOrders value) getAllOrders,
  }) {
    return getAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllOrders value)? getAllOrders,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(this);
    }
    return orElse();
  }
}

abstract class GetAllOrders implements OrderEvent {
  const factory GetAllOrders() = _$GetAllOrders;
}

/// @nodoc
class _$OrderStateTearOff {
  const _$OrderStateTearOff();

  InitialOrder initialOrder() {
    return const InitialOrder();
  }

  LoadingOrder loadingOrder() {
    return const LoadingOrder();
  }

  LoadedOrders loadedOrders({OrderListEntity? orderListEntity}) {
    return LoadedOrders(
      orderListEntity: orderListEntity,
    );
  }

  ErrorOrder errorOrder({AppErrors? error, required void Function() callback}) {
    return ErrorOrder(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $OrderState = _$OrderStateTearOff();

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialOrder,
    required TResult Function() loadingOrder,
    required TResult Function(OrderListEntity? orderListEntity) loadedOrders,
    required TResult Function(AppErrors? error, void Function() callback)
        errorOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialOrder,
    TResult Function()? loadingOrder,
    TResult Function(OrderListEntity? orderListEntity)? loadedOrders,
    TResult Function(AppErrors? error, void Function() callback)? errorOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialOrder value) initialOrder,
    required TResult Function(LoadingOrder value) loadingOrder,
    required TResult Function(LoadedOrders value) loadedOrders,
    required TResult Function(ErrorOrder value) errorOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialOrder value)? initialOrder,
    TResult Function(LoadingOrder value)? loadingOrder,
    TResult Function(LoadedOrders value)? loadedOrders,
    TResult Function(ErrorOrder value)? errorOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;
}

/// @nodoc
abstract class $InitialOrderCopyWith<$Res> {
  factory $InitialOrderCopyWith(
          InitialOrder value, $Res Function(InitialOrder) then) =
      _$InitialOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialOrderCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements $InitialOrderCopyWith<$Res> {
  _$InitialOrderCopyWithImpl(
      InitialOrder _value, $Res Function(InitialOrder) _then)
      : super(_value, (v) => _then(v as InitialOrder));

  @override
  InitialOrder get _value => super._value as InitialOrder;
}

/// @nodoc

class _$InitialOrder implements InitialOrder {
  const _$InitialOrder();

  @override
  String toString() {
    return 'OrderState.initialOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialOrder,
    required TResult Function() loadingOrder,
    required TResult Function(OrderListEntity? orderListEntity) loadedOrders,
    required TResult Function(AppErrors? error, void Function() callback)
        errorOrder,
  }) {
    return initialOrder();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialOrder,
    TResult Function()? loadingOrder,
    TResult Function(OrderListEntity? orderListEntity)? loadedOrders,
    TResult Function(AppErrors? error, void Function() callback)? errorOrder,
    required TResult orElse(),
  }) {
    if (initialOrder != null) {
      return initialOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialOrder value) initialOrder,
    required TResult Function(LoadingOrder value) loadingOrder,
    required TResult Function(LoadedOrders value) loadedOrders,
    required TResult Function(ErrorOrder value) errorOrder,
  }) {
    return initialOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialOrder value)? initialOrder,
    TResult Function(LoadingOrder value)? loadingOrder,
    TResult Function(LoadedOrders value)? loadedOrders,
    TResult Function(ErrorOrder value)? errorOrder,
    required TResult orElse(),
  }) {
    if (initialOrder != null) {
      return initialOrder(this);
    }
    return orElse();
  }
}

abstract class InitialOrder implements OrderState {
  const factory InitialOrder() = _$InitialOrder;
}

/// @nodoc
abstract class $LoadingOrderCopyWith<$Res> {
  factory $LoadingOrderCopyWith(
          LoadingOrder value, $Res Function(LoadingOrder) then) =
      _$LoadingOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingOrderCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements $LoadingOrderCopyWith<$Res> {
  _$LoadingOrderCopyWithImpl(
      LoadingOrder _value, $Res Function(LoadingOrder) _then)
      : super(_value, (v) => _then(v as LoadingOrder));

  @override
  LoadingOrder get _value => super._value as LoadingOrder;
}

/// @nodoc

class _$LoadingOrder implements LoadingOrder {
  const _$LoadingOrder();

  @override
  String toString() {
    return 'OrderState.loadingOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialOrder,
    required TResult Function() loadingOrder,
    required TResult Function(OrderListEntity? orderListEntity) loadedOrders,
    required TResult Function(AppErrors? error, void Function() callback)
        errorOrder,
  }) {
    return loadingOrder();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialOrder,
    TResult Function()? loadingOrder,
    TResult Function(OrderListEntity? orderListEntity)? loadedOrders,
    TResult Function(AppErrors? error, void Function() callback)? errorOrder,
    required TResult orElse(),
  }) {
    if (loadingOrder != null) {
      return loadingOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialOrder value) initialOrder,
    required TResult Function(LoadingOrder value) loadingOrder,
    required TResult Function(LoadedOrders value) loadedOrders,
    required TResult Function(ErrorOrder value) errorOrder,
  }) {
    return loadingOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialOrder value)? initialOrder,
    TResult Function(LoadingOrder value)? loadingOrder,
    TResult Function(LoadedOrders value)? loadedOrders,
    TResult Function(ErrorOrder value)? errorOrder,
    required TResult orElse(),
  }) {
    if (loadingOrder != null) {
      return loadingOrder(this);
    }
    return orElse();
  }
}

abstract class LoadingOrder implements OrderState {
  const factory LoadingOrder() = _$LoadingOrder;
}

/// @nodoc
abstract class $LoadedOrdersCopyWith<$Res> {
  factory $LoadedOrdersCopyWith(
          LoadedOrders value, $Res Function(LoadedOrders) then) =
      _$LoadedOrdersCopyWithImpl<$Res>;
  $Res call({OrderListEntity? orderListEntity});
}

/// @nodoc
class _$LoadedOrdersCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements $LoadedOrdersCopyWith<$Res> {
  _$LoadedOrdersCopyWithImpl(
      LoadedOrders _value, $Res Function(LoadedOrders) _then)
      : super(_value, (v) => _then(v as LoadedOrders));

  @override
  LoadedOrders get _value => super._value as LoadedOrders;

  @override
  $Res call({
    Object? orderListEntity = freezed,
  }) {
    return _then(LoadedOrders(
      orderListEntity: orderListEntity == freezed
          ? _value.orderListEntity
          : orderListEntity // ignore: cast_nullable_to_non_nullable
              as OrderListEntity?,
    ));
  }
}

/// @nodoc

class _$LoadedOrders implements LoadedOrders {
  const _$LoadedOrders({this.orderListEntity});

  @override
  final OrderListEntity? orderListEntity;

  @override
  String toString() {
    return 'OrderState.loadedOrders(orderListEntity: $orderListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedOrders &&
            (identical(other.orderListEntity, orderListEntity) ||
                const DeepCollectionEquality()
                    .equals(other.orderListEntity, orderListEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderListEntity);

  @JsonKey(ignore: true)
  @override
  $LoadedOrdersCopyWith<LoadedOrders> get copyWith =>
      _$LoadedOrdersCopyWithImpl<LoadedOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialOrder,
    required TResult Function() loadingOrder,
    required TResult Function(OrderListEntity? orderListEntity) loadedOrders,
    required TResult Function(AppErrors? error, void Function() callback)
        errorOrder,
  }) {
    return loadedOrders(orderListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialOrder,
    TResult Function()? loadingOrder,
    TResult Function(OrderListEntity? orderListEntity)? loadedOrders,
    TResult Function(AppErrors? error, void Function() callback)? errorOrder,
    required TResult orElse(),
  }) {
    if (loadedOrders != null) {
      return loadedOrders(orderListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialOrder value) initialOrder,
    required TResult Function(LoadingOrder value) loadingOrder,
    required TResult Function(LoadedOrders value) loadedOrders,
    required TResult Function(ErrorOrder value) errorOrder,
  }) {
    return loadedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialOrder value)? initialOrder,
    TResult Function(LoadingOrder value)? loadingOrder,
    TResult Function(LoadedOrders value)? loadedOrders,
    TResult Function(ErrorOrder value)? errorOrder,
    required TResult orElse(),
  }) {
    if (loadedOrders != null) {
      return loadedOrders(this);
    }
    return orElse();
  }
}

abstract class LoadedOrders implements OrderState {
  const factory LoadedOrders({OrderListEntity? orderListEntity}) =
      _$LoadedOrders;

  OrderListEntity? get orderListEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedOrdersCopyWith<LoadedOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorOrderCopyWith<$Res> {
  factory $ErrorOrderCopyWith(
          ErrorOrder value, $Res Function(ErrorOrder) then) =
      _$ErrorOrderCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorOrderCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements $ErrorOrderCopyWith<$Res> {
  _$ErrorOrderCopyWithImpl(ErrorOrder _value, $Res Function(ErrorOrder) _then)
      : super(_value, (v) => _then(v as ErrorOrder));

  @override
  ErrorOrder get _value => super._value as ErrorOrder;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ErrorOrder(
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

class _$ErrorOrder implements ErrorOrder {
  const _$ErrorOrder({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'OrderState.errorOrder(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorOrder &&
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
  $ErrorOrderCopyWith<ErrorOrder> get copyWith =>
      _$ErrorOrderCopyWithImpl<ErrorOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialOrder,
    required TResult Function() loadingOrder,
    required TResult Function(OrderListEntity? orderListEntity) loadedOrders,
    required TResult Function(AppErrors? error, void Function() callback)
        errorOrder,
  }) {
    return errorOrder(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialOrder,
    TResult Function()? loadingOrder,
    TResult Function(OrderListEntity? orderListEntity)? loadedOrders,
    TResult Function(AppErrors? error, void Function() callback)? errorOrder,
    required TResult orElse(),
  }) {
    if (errorOrder != null) {
      return errorOrder(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialOrder value) initialOrder,
    required TResult Function(LoadingOrder value) loadingOrder,
    required TResult Function(LoadedOrders value) loadedOrders,
    required TResult Function(ErrorOrder value) errorOrder,
  }) {
    return errorOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialOrder value)? initialOrder,
    TResult Function(LoadingOrder value)? loadingOrder,
    TResult Function(LoadedOrders value)? loadedOrders,
    TResult Function(ErrorOrder value)? errorOrder,
    required TResult orElse(),
  }) {
    if (errorOrder != null) {
      return errorOrder(this);
    }
    return orElse();
  }
}

abstract class ErrorOrder implements OrderState {
  const factory ErrorOrder(
      {AppErrors? error, required void Function() callback}) = _$ErrorOrder;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorOrderCopyWith<ErrorOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
