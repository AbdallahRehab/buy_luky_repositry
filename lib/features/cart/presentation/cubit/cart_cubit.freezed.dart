// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  CartInitState cartInitState() {
    return const CartInitState();
  }

  CartLoadingState cartLoadingState() {
    return const CartLoadingState();
  }

  ChargeLoadedState chargeLoadedState({EmptyResponse? response}) {
    return ChargeLoadedState(
      response: response,
    );
  }

  CheckoutLoadedState checkoutLoadedState({EmptyResponse? response}) {
    return CheckoutLoadedState(
      response: response,
    );
  }

  PaymentLoaded paymentLoaded({GeneratePaymentEntity? response}) {
    return PaymentLoaded(
      response: response,
    );
  }

  CartErrorState cartErrorState(
      {AppErrors? error, required void Function() callback}) {
    return CartErrorState(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class $CartInitStateCopyWith<$Res> {
  factory $CartInitStateCopyWith(
          CartInitState value, $Res Function(CartInitState) then) =
      _$CartInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartInitStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $CartInitStateCopyWith<$Res> {
  _$CartInitStateCopyWithImpl(
      CartInitState _value, $Res Function(CartInitState) _then)
      : super(_value, (v) => _then(v as CartInitState));

  @override
  CartInitState get _value => super._value as CartInitState;
}

/// @nodoc

class _$CartInitState implements CartInitState {
  const _$CartInitState();

  @override
  String toString() {
    return 'CartState.cartInitState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CartInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return cartInitState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (cartInitState != null) {
      return cartInitState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return cartInitState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (cartInitState != null) {
      return cartInitState(this);
    }
    return orElse();
  }
}

abstract class CartInitState implements CartState {
  const factory CartInitState() = _$CartInitState;
}

/// @nodoc
abstract class $CartLoadingStateCopyWith<$Res> {
  factory $CartLoadingStateCopyWith(
          CartLoadingState value, $Res Function(CartLoadingState) then) =
      _$CartLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartLoadingStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $CartLoadingStateCopyWith<$Res> {
  _$CartLoadingStateCopyWithImpl(
      CartLoadingState _value, $Res Function(CartLoadingState) _then)
      : super(_value, (v) => _then(v as CartLoadingState));

  @override
  CartLoadingState get _value => super._value as CartLoadingState;
}

/// @nodoc

class _$CartLoadingState implements CartLoadingState {
  const _$CartLoadingState();

  @override
  String toString() {
    return 'CartState.cartLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CartLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return cartLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (cartLoadingState != null) {
      return cartLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return cartLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (cartLoadingState != null) {
      return cartLoadingState(this);
    }
    return orElse();
  }
}

abstract class CartLoadingState implements CartState {
  const factory CartLoadingState() = _$CartLoadingState;
}

/// @nodoc
abstract class $ChargeLoadedStateCopyWith<$Res> {
  factory $ChargeLoadedStateCopyWith(
          ChargeLoadedState value, $Res Function(ChargeLoadedState) then) =
      _$ChargeLoadedStateCopyWithImpl<$Res>;
  $Res call({EmptyResponse? response});
}

/// @nodoc
class _$ChargeLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements $ChargeLoadedStateCopyWith<$Res> {
  _$ChargeLoadedStateCopyWithImpl(
      ChargeLoadedState _value, $Res Function(ChargeLoadedState) _then)
      : super(_value, (v) => _then(v as ChargeLoadedState));

  @override
  ChargeLoadedState get _value => super._value as ChargeLoadedState;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(ChargeLoadedState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EmptyResponse?,
    ));
  }
}

/// @nodoc

class _$ChargeLoadedState implements ChargeLoadedState {
  const _$ChargeLoadedState({this.response});

  @override
  final EmptyResponse? response;

  @override
  String toString() {
    return 'CartState.chargeLoadedState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChargeLoadedState &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $ChargeLoadedStateCopyWith<ChargeLoadedState> get copyWith =>
      _$ChargeLoadedStateCopyWithImpl<ChargeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return chargeLoadedState(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (chargeLoadedState != null) {
      return chargeLoadedState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return chargeLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (chargeLoadedState != null) {
      return chargeLoadedState(this);
    }
    return orElse();
  }
}

abstract class ChargeLoadedState implements CartState {
  const factory ChargeLoadedState({EmptyResponse? response}) =
      _$ChargeLoadedState;

  EmptyResponse? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargeLoadedStateCopyWith<ChargeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutLoadedStateCopyWith<$Res> {
  factory $CheckoutLoadedStateCopyWith(
          CheckoutLoadedState value, $Res Function(CheckoutLoadedState) then) =
      _$CheckoutLoadedStateCopyWithImpl<$Res>;
  $Res call({EmptyResponse? response});
}

/// @nodoc
class _$CheckoutLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements $CheckoutLoadedStateCopyWith<$Res> {
  _$CheckoutLoadedStateCopyWithImpl(
      CheckoutLoadedState _value, $Res Function(CheckoutLoadedState) _then)
      : super(_value, (v) => _then(v as CheckoutLoadedState));

  @override
  CheckoutLoadedState get _value => super._value as CheckoutLoadedState;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(CheckoutLoadedState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EmptyResponse?,
    ));
  }
}

/// @nodoc

class _$CheckoutLoadedState implements CheckoutLoadedState {
  const _$CheckoutLoadedState({this.response});

  @override
  final EmptyResponse? response;

  @override
  String toString() {
    return 'CartState.checkoutLoadedState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckoutLoadedState &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $CheckoutLoadedStateCopyWith<CheckoutLoadedState> get copyWith =>
      _$CheckoutLoadedStateCopyWithImpl<CheckoutLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return checkoutLoadedState(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (checkoutLoadedState != null) {
      return checkoutLoadedState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return checkoutLoadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (checkoutLoadedState != null) {
      return checkoutLoadedState(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoadedState implements CartState {
  const factory CheckoutLoadedState({EmptyResponse? response}) =
      _$CheckoutLoadedState;

  EmptyResponse? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutLoadedStateCopyWith<CheckoutLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLoadedCopyWith<$Res> {
  factory $PaymentLoadedCopyWith(
          PaymentLoaded value, $Res Function(PaymentLoaded) then) =
      _$PaymentLoadedCopyWithImpl<$Res>;
  $Res call({GeneratePaymentEntity? response});
}

/// @nodoc
class _$PaymentLoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $PaymentLoadedCopyWith<$Res> {
  _$PaymentLoadedCopyWithImpl(
      PaymentLoaded _value, $Res Function(PaymentLoaded) _then)
      : super(_value, (v) => _then(v as PaymentLoaded));

  @override
  PaymentLoaded get _value => super._value as PaymentLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(PaymentLoaded(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GeneratePaymentEntity?,
    ));
  }
}

/// @nodoc

class _$PaymentLoaded implements PaymentLoaded {
  const _$PaymentLoaded({this.response});

  @override
  final GeneratePaymentEntity? response;

  @override
  String toString() {
    return 'CartState.paymentLoaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentLoaded &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $PaymentLoadedCopyWith<PaymentLoaded> get copyWith =>
      _$PaymentLoadedCopyWithImpl<PaymentLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return paymentLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (paymentLoaded != null) {
      return paymentLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return paymentLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (paymentLoaded != null) {
      return paymentLoaded(this);
    }
    return orElse();
  }
}

abstract class PaymentLoaded implements CartState {
  const factory PaymentLoaded({GeneratePaymentEntity? response}) =
      _$PaymentLoaded;

  GeneratePaymentEntity? get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentLoadedCopyWith<PaymentLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartErrorStateCopyWith<$Res> {
  factory $CartErrorStateCopyWith(
          CartErrorState value, $Res Function(CartErrorState) then) =
      _$CartErrorStateCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$CartErrorStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $CartErrorStateCopyWith<$Res> {
  _$CartErrorStateCopyWithImpl(
      CartErrorState _value, $Res Function(CartErrorState) _then)
      : super(_value, (v) => _then(v as CartErrorState));

  @override
  CartErrorState get _value => super._value as CartErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(CartErrorState(
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

class _$CartErrorState implements CartErrorState {
  const _$CartErrorState({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'CartState.cartErrorState(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartErrorState &&
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
  $CartErrorStateCopyWith<CartErrorState> get copyWith =>
      _$CartErrorStateCopyWithImpl<CartErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cartInitState,
    required TResult Function() cartLoadingState,
    required TResult Function(EmptyResponse? response) chargeLoadedState,
    required TResult Function(EmptyResponse? response) checkoutLoadedState,
    required TResult Function(GeneratePaymentEntity? response) paymentLoaded,
    required TResult Function(AppErrors? error, void Function() callback)
        cartErrorState,
  }) {
    return cartErrorState(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cartInitState,
    TResult Function()? cartLoadingState,
    TResult Function(EmptyResponse? response)? chargeLoadedState,
    TResult Function(EmptyResponse? response)? checkoutLoadedState,
    TResult Function(GeneratePaymentEntity? response)? paymentLoaded,
    TResult Function(AppErrors? error, void Function() callback)?
        cartErrorState,
    required TResult orElse(),
  }) {
    if (cartErrorState != null) {
      return cartErrorState(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) cartInitState,
    required TResult Function(CartLoadingState value) cartLoadingState,
    required TResult Function(ChargeLoadedState value) chargeLoadedState,
    required TResult Function(CheckoutLoadedState value) checkoutLoadedState,
    required TResult Function(PaymentLoaded value) paymentLoaded,
    required TResult Function(CartErrorState value) cartErrorState,
  }) {
    return cartErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? cartInitState,
    TResult Function(CartLoadingState value)? cartLoadingState,
    TResult Function(ChargeLoadedState value)? chargeLoadedState,
    TResult Function(CheckoutLoadedState value)? checkoutLoadedState,
    TResult Function(PaymentLoaded value)? paymentLoaded,
    TResult Function(CartErrorState value)? cartErrorState,
    required TResult orElse(),
  }) {
    if (cartErrorState != null) {
      return cartErrorState(this);
    }
    return orElse();
  }
}

abstract class CartErrorState implements CartState {
  const factory CartErrorState(
      {AppErrors? error, required void Function() callback}) = _$CartErrorState;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartErrorStateCopyWith<CartErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
