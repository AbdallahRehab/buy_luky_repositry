// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_management_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserManagementStateTearOff {
  const _$UserManagementStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({TokenResponse? loginEntity}) {
    return Loaded(
      loginEntity: loginEntity,
    );
  }

  SuccessChangePassword successChangePassword() {
    return const SuccessChangePassword();
  }

  SuccessLoginWithGoogle successLoginWithGoogle() {
    return const SuccessLoginWithGoogle();
  }

  SuccessLoginWithFacebook successLoginWithFacebook() {
    return const SuccessLoginWithFacebook();
  }

  SuccessForgotPassword successForgotPassword() {
    return const SuccessForgotPassword();
  }

  SuccessResendEmailVerify successResendEmailVerify(
      {ResendEmailVerifyEntity? resendEmailVerifyEntity}) {
    return SuccessResendEmailVerify(
      resendEmailVerifyEntity: resendEmailVerifyEntity,
    );
  }

  SuccessVerifyEmail successVerifyEmail(
      {VerifyEmailEntity? verifyEmailEntity}) {
    return SuccessVerifyEmail(
      verifyEmailEntity: verifyEmailEntity,
    );
  }

  SuccessForgotPasswordVerifyCode successForgotPasswordVerifyCode(
      {TokenResponse? tokenResponse}) {
    return SuccessForgotPasswordVerifyCode(
      tokenResponse: tokenResponse,
    );
  }

  SuccessResetPassword successResetPassword({TokenResponse? tokenResponse}) {
    return SuccessResetPassword(
      tokenResponse: tokenResponse,
    );
  }

  Error error(
      {AppErrors? error, void Function()? callback, required bool isSocial}) {
    return Error(
      error: error,
      callback: callback,
      isSocial: isSocial,
    );
  }
}

/// @nodoc
const $UserManagementState = _$UserManagementStateTearOff();

/// @nodoc
mixin _$UserManagementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementStateCopyWith<$Res> {
  factory $UserManagementStateCopyWith(
          UserManagementState value, $Res Function(UserManagementState) then) =
      _$UserManagementStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserManagementStateCopyWithImpl<$Res>
    implements $UserManagementStateCopyWith<$Res> {
  _$UserManagementStateCopyWithImpl(this._value, this._then);

  final UserManagementState _value;
  // ignore: unused_field
  final $Res Function(UserManagementState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
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
    return 'UserManagementState.initial()';
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
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
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
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserManagementState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
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
    return 'UserManagementState.loading()';
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
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
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
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserManagementState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({TokenResponse? loginEntity});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$UserManagementStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? loginEntity = freezed,
  }) {
    return _then(Loaded(
      loginEntity: loginEntity == freezed
          ? _value.loginEntity
          : loginEntity // ignore: cast_nullable_to_non_nullable
              as TokenResponse?,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({this.loginEntity});

  @override
  final TokenResponse? loginEntity;

  @override
  String toString() {
    return 'UserManagementState.loaded(loginEntity: $loginEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.loginEntity, loginEntity) ||
                const DeepCollectionEquality()
                    .equals(other.loginEntity, loginEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginEntity);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return loaded(loginEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loginEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserManagementState {
  const factory Loaded({TokenResponse? loginEntity}) = _$Loaded;

  TokenResponse? get loginEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessChangePasswordCopyWith<$Res> {
  factory $SuccessChangePasswordCopyWith(SuccessChangePassword value,
          $Res Function(SuccessChangePassword) then) =
      _$SuccessChangePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessChangePasswordCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessChangePasswordCopyWith<$Res> {
  _$SuccessChangePasswordCopyWithImpl(
      SuccessChangePassword _value, $Res Function(SuccessChangePassword) _then)
      : super(_value, (v) => _then(v as SuccessChangePassword));

  @override
  SuccessChangePassword get _value => super._value as SuccessChangePassword;
}

/// @nodoc

class _$SuccessChangePassword implements SuccessChangePassword {
  const _$SuccessChangePassword();

  @override
  String toString() {
    return 'UserManagementState.successChangePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessChangePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successChangePassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successChangePassword != null) {
      return successChangePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successChangePassword != null) {
      return successChangePassword(this);
    }
    return orElse();
  }
}

abstract class SuccessChangePassword implements UserManagementState {
  const factory SuccessChangePassword() = _$SuccessChangePassword;
}

/// @nodoc
abstract class $SuccessLoginWithGoogleCopyWith<$Res> {
  factory $SuccessLoginWithGoogleCopyWith(SuccessLoginWithGoogle value,
          $Res Function(SuccessLoginWithGoogle) then) =
      _$SuccessLoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessLoginWithGoogleCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessLoginWithGoogleCopyWith<$Res> {
  _$SuccessLoginWithGoogleCopyWithImpl(SuccessLoginWithGoogle _value,
      $Res Function(SuccessLoginWithGoogle) _then)
      : super(_value, (v) => _then(v as SuccessLoginWithGoogle));

  @override
  SuccessLoginWithGoogle get _value => super._value as SuccessLoginWithGoogle;
}

/// @nodoc

class _$SuccessLoginWithGoogle implements SuccessLoginWithGoogle {
  const _$SuccessLoginWithGoogle();

  @override
  String toString() {
    return 'UserManagementState.successLoginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessLoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successLoginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successLoginWithGoogle != null) {
      return successLoginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successLoginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successLoginWithGoogle != null) {
      return successLoginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginWithGoogle implements UserManagementState {
  const factory SuccessLoginWithGoogle() = _$SuccessLoginWithGoogle;
}

/// @nodoc
abstract class $SuccessLoginWithFacebookCopyWith<$Res> {
  factory $SuccessLoginWithFacebookCopyWith(SuccessLoginWithFacebook value,
          $Res Function(SuccessLoginWithFacebook) then) =
      _$SuccessLoginWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessLoginWithFacebookCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessLoginWithFacebookCopyWith<$Res> {
  _$SuccessLoginWithFacebookCopyWithImpl(SuccessLoginWithFacebook _value,
      $Res Function(SuccessLoginWithFacebook) _then)
      : super(_value, (v) => _then(v as SuccessLoginWithFacebook));

  @override
  SuccessLoginWithFacebook get _value =>
      super._value as SuccessLoginWithFacebook;
}

/// @nodoc

class _$SuccessLoginWithFacebook implements SuccessLoginWithFacebook {
  const _$SuccessLoginWithFacebook();

  @override
  String toString() {
    return 'UserManagementState.successLoginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessLoginWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successLoginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successLoginWithFacebook != null) {
      return successLoginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successLoginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successLoginWithFacebook != null) {
      return successLoginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginWithFacebook implements UserManagementState {
  const factory SuccessLoginWithFacebook() = _$SuccessLoginWithFacebook;
}

/// @nodoc
abstract class $SuccessForgotPasswordCopyWith<$Res> {
  factory $SuccessForgotPasswordCopyWith(SuccessForgotPassword value,
          $Res Function(SuccessForgotPassword) then) =
      _$SuccessForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessForgotPasswordCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessForgotPasswordCopyWith<$Res> {
  _$SuccessForgotPasswordCopyWithImpl(
      SuccessForgotPassword _value, $Res Function(SuccessForgotPassword) _then)
      : super(_value, (v) => _then(v as SuccessForgotPassword));

  @override
  SuccessForgotPassword get _value => super._value as SuccessForgotPassword;
}

/// @nodoc

class _$SuccessForgotPassword implements SuccessForgotPassword {
  const _$SuccessForgotPassword();

  @override
  String toString() {
    return 'UserManagementState.successForgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successForgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successForgotPassword != null) {
      return successForgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successForgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successForgotPassword != null) {
      return successForgotPassword(this);
    }
    return orElse();
  }
}

abstract class SuccessForgotPassword implements UserManagementState {
  const factory SuccessForgotPassword() = _$SuccessForgotPassword;
}

/// @nodoc
abstract class $SuccessResendEmailVerifyCopyWith<$Res> {
  factory $SuccessResendEmailVerifyCopyWith(SuccessResendEmailVerify value,
          $Res Function(SuccessResendEmailVerify) then) =
      _$SuccessResendEmailVerifyCopyWithImpl<$Res>;
  $Res call({ResendEmailVerifyEntity? resendEmailVerifyEntity});
}

/// @nodoc
class _$SuccessResendEmailVerifyCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessResendEmailVerifyCopyWith<$Res> {
  _$SuccessResendEmailVerifyCopyWithImpl(SuccessResendEmailVerify _value,
      $Res Function(SuccessResendEmailVerify) _then)
      : super(_value, (v) => _then(v as SuccessResendEmailVerify));

  @override
  SuccessResendEmailVerify get _value =>
      super._value as SuccessResendEmailVerify;

  @override
  $Res call({
    Object? resendEmailVerifyEntity = freezed,
  }) {
    return _then(SuccessResendEmailVerify(
      resendEmailVerifyEntity: resendEmailVerifyEntity == freezed
          ? _value.resendEmailVerifyEntity
          : resendEmailVerifyEntity // ignore: cast_nullable_to_non_nullable
              as ResendEmailVerifyEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessResendEmailVerify implements SuccessResendEmailVerify {
  const _$SuccessResendEmailVerify({this.resendEmailVerifyEntity});

  @override
  final ResendEmailVerifyEntity? resendEmailVerifyEntity;

  @override
  String toString() {
    return 'UserManagementState.successResendEmailVerify(resendEmailVerifyEntity: $resendEmailVerifyEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessResendEmailVerify &&
            (identical(
                    other.resendEmailVerifyEntity, resendEmailVerifyEntity) ||
                const DeepCollectionEquality().equals(
                    other.resendEmailVerifyEntity, resendEmailVerifyEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resendEmailVerifyEntity);

  @JsonKey(ignore: true)
  @override
  $SuccessResendEmailVerifyCopyWith<SuccessResendEmailVerify> get copyWith =>
      _$SuccessResendEmailVerifyCopyWithImpl<SuccessResendEmailVerify>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successResendEmailVerify(resendEmailVerifyEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successResendEmailVerify != null) {
      return successResendEmailVerify(resendEmailVerifyEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successResendEmailVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successResendEmailVerify != null) {
      return successResendEmailVerify(this);
    }
    return orElse();
  }
}

abstract class SuccessResendEmailVerify implements UserManagementState {
  const factory SuccessResendEmailVerify(
          {ResendEmailVerifyEntity? resendEmailVerifyEntity}) =
      _$SuccessResendEmailVerify;

  ResendEmailVerifyEntity? get resendEmailVerifyEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResendEmailVerifyCopyWith<SuccessResendEmailVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessVerifyEmailCopyWith<$Res> {
  factory $SuccessVerifyEmailCopyWith(
          SuccessVerifyEmail value, $Res Function(SuccessVerifyEmail) then) =
      _$SuccessVerifyEmailCopyWithImpl<$Res>;
  $Res call({VerifyEmailEntity? verifyEmailEntity});
}

/// @nodoc
class _$SuccessVerifyEmailCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessVerifyEmailCopyWith<$Res> {
  _$SuccessVerifyEmailCopyWithImpl(
      SuccessVerifyEmail _value, $Res Function(SuccessVerifyEmail) _then)
      : super(_value, (v) => _then(v as SuccessVerifyEmail));

  @override
  SuccessVerifyEmail get _value => super._value as SuccessVerifyEmail;

  @override
  $Res call({
    Object? verifyEmailEntity = freezed,
  }) {
    return _then(SuccessVerifyEmail(
      verifyEmailEntity: verifyEmailEntity == freezed
          ? _value.verifyEmailEntity
          : verifyEmailEntity // ignore: cast_nullable_to_non_nullable
              as VerifyEmailEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessVerifyEmail implements SuccessVerifyEmail {
  const _$SuccessVerifyEmail({this.verifyEmailEntity});

  @override
  final VerifyEmailEntity? verifyEmailEntity;

  @override
  String toString() {
    return 'UserManagementState.successVerifyEmail(verifyEmailEntity: $verifyEmailEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessVerifyEmail &&
            (identical(other.verifyEmailEntity, verifyEmailEntity) ||
                const DeepCollectionEquality()
                    .equals(other.verifyEmailEntity, verifyEmailEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verifyEmailEntity);

  @JsonKey(ignore: true)
  @override
  $SuccessVerifyEmailCopyWith<SuccessVerifyEmail> get copyWith =>
      _$SuccessVerifyEmailCopyWithImpl<SuccessVerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successVerifyEmail(verifyEmailEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successVerifyEmail != null) {
      return successVerifyEmail(verifyEmailEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successVerifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successVerifyEmail != null) {
      return successVerifyEmail(this);
    }
    return orElse();
  }
}

abstract class SuccessVerifyEmail implements UserManagementState {
  const factory SuccessVerifyEmail({VerifyEmailEntity? verifyEmailEntity}) =
      _$SuccessVerifyEmail;

  VerifyEmailEntity? get verifyEmailEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessVerifyEmailCopyWith<SuccessVerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessForgotPasswordVerifyCodeCopyWith<$Res> {
  factory $SuccessForgotPasswordVerifyCodeCopyWith(
          SuccessForgotPasswordVerifyCode value,
          $Res Function(SuccessForgotPasswordVerifyCode) then) =
      _$SuccessForgotPasswordVerifyCodeCopyWithImpl<$Res>;
  $Res call({TokenResponse? tokenResponse});
}

/// @nodoc
class _$SuccessForgotPasswordVerifyCodeCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessForgotPasswordVerifyCodeCopyWith<$Res> {
  _$SuccessForgotPasswordVerifyCodeCopyWithImpl(
      SuccessForgotPasswordVerifyCode _value,
      $Res Function(SuccessForgotPasswordVerifyCode) _then)
      : super(_value, (v) => _then(v as SuccessForgotPasswordVerifyCode));

  @override
  SuccessForgotPasswordVerifyCode get _value =>
      super._value as SuccessForgotPasswordVerifyCode;

  @override
  $Res call({
    Object? tokenResponse = freezed,
  }) {
    return _then(SuccessForgotPasswordVerifyCode(
      tokenResponse: tokenResponse == freezed
          ? _value.tokenResponse
          : tokenResponse // ignore: cast_nullable_to_non_nullable
              as TokenResponse?,
    ));
  }
}

/// @nodoc

class _$SuccessForgotPasswordVerifyCode
    implements SuccessForgotPasswordVerifyCode {
  const _$SuccessForgotPasswordVerifyCode({this.tokenResponse});

  @override
  final TokenResponse? tokenResponse;

  @override
  String toString() {
    return 'UserManagementState.successForgotPasswordVerifyCode(tokenResponse: $tokenResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessForgotPasswordVerifyCode &&
            (identical(other.tokenResponse, tokenResponse) ||
                const DeepCollectionEquality()
                    .equals(other.tokenResponse, tokenResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tokenResponse);

  @JsonKey(ignore: true)
  @override
  $SuccessForgotPasswordVerifyCodeCopyWith<SuccessForgotPasswordVerifyCode>
      get copyWith => _$SuccessForgotPasswordVerifyCodeCopyWithImpl<
          SuccessForgotPasswordVerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successForgotPasswordVerifyCode(tokenResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successForgotPasswordVerifyCode != null) {
      return successForgotPasswordVerifyCode(tokenResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successForgotPasswordVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successForgotPasswordVerifyCode != null) {
      return successForgotPasswordVerifyCode(this);
    }
    return orElse();
  }
}

abstract class SuccessForgotPasswordVerifyCode implements UserManagementState {
  const factory SuccessForgotPasswordVerifyCode(
      {TokenResponse? tokenResponse}) = _$SuccessForgotPasswordVerifyCode;

  TokenResponse? get tokenResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessForgotPasswordVerifyCodeCopyWith<SuccessForgotPasswordVerifyCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResetPasswordCopyWith<$Res> {
  factory $SuccessResetPasswordCopyWith(SuccessResetPassword value,
          $Res Function(SuccessResetPassword) then) =
      _$SuccessResetPasswordCopyWithImpl<$Res>;
  $Res call({TokenResponse? tokenResponse});
}

/// @nodoc
class _$SuccessResetPasswordCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res>
    implements $SuccessResetPasswordCopyWith<$Res> {
  _$SuccessResetPasswordCopyWithImpl(
      SuccessResetPassword _value, $Res Function(SuccessResetPassword) _then)
      : super(_value, (v) => _then(v as SuccessResetPassword));

  @override
  SuccessResetPassword get _value => super._value as SuccessResetPassword;

  @override
  $Res call({
    Object? tokenResponse = freezed,
  }) {
    return _then(SuccessResetPassword(
      tokenResponse: tokenResponse == freezed
          ? _value.tokenResponse
          : tokenResponse // ignore: cast_nullable_to_non_nullable
              as TokenResponse?,
    ));
  }
}

/// @nodoc

class _$SuccessResetPassword implements SuccessResetPassword {
  const _$SuccessResetPassword({this.tokenResponse});

  @override
  final TokenResponse? tokenResponse;

  @override
  String toString() {
    return 'UserManagementState.successResetPassword(tokenResponse: $tokenResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessResetPassword &&
            (identical(other.tokenResponse, tokenResponse) ||
                const DeepCollectionEquality()
                    .equals(other.tokenResponse, tokenResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tokenResponse);

  @JsonKey(ignore: true)
  @override
  $SuccessResetPasswordCopyWith<SuccessResetPassword> get copyWith =>
      _$SuccessResetPasswordCopyWithImpl<SuccessResetPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return successResetPassword(tokenResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (successResetPassword != null) {
      return successResetPassword(tokenResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return successResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (successResetPassword != null) {
      return successResetPassword(this);
    }
    return orElse();
  }
}

abstract class SuccessResetPassword implements UserManagementState {
  const factory SuccessResetPassword({TokenResponse? tokenResponse}) =
      _$SuccessResetPassword;

  TokenResponse? get tokenResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResetPasswordCopyWith<SuccessResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function()? callback, bool isSocial});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$UserManagementStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
    Object? isSocial = freezed,
  }) {
    return _then(Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppErrors?,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      isSocial: isSocial == freezed
          ? _value.isSocial
          : isSocial // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$Error implements Error {
  const _$Error({this.error, this.callback, required this.isSocial});

  @override
  final AppErrors? error;
  @override
  final void Function()? callback;
  @override
  final bool isSocial;

  @override
  String toString() {
    return 'UserManagementState.error(error: $error, callback: $callback, isSocial: $isSocial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.callback, callback) ||
                const DeepCollectionEquality()
                    .equals(other.callback, callback)) &&
            (identical(other.isSocial, isSocial) ||
                const DeepCollectionEquality()
                    .equals(other.isSocial, isSocial)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(callback) ^
      const DeepCollectionEquality().hash(isSocial);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TokenResponse? loginEntity) loaded,
    required TResult Function() successChangePassword,
    required TResult Function() successLoginWithGoogle,
    required TResult Function() successLoginWithFacebook,
    required TResult Function() successForgotPassword,
    required TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)
        successResendEmailVerify,
    required TResult Function(VerifyEmailEntity? verifyEmailEntity)
        successVerifyEmail,
    required TResult Function(TokenResponse? tokenResponse)
        successForgotPasswordVerifyCode,
    required TResult Function(TokenResponse? tokenResponse)
        successResetPassword,
    required TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)
        error,
  }) {
    return error(this.error, callback, isSocial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TokenResponse? loginEntity)? loaded,
    TResult Function()? successChangePassword,
    TResult Function()? successLoginWithGoogle,
    TResult Function()? successLoginWithFacebook,
    TResult Function()? successForgotPassword,
    TResult Function(ResendEmailVerifyEntity? resendEmailVerifyEntity)?
        successResendEmailVerify,
    TResult Function(VerifyEmailEntity? verifyEmailEntity)? successVerifyEmail,
    TResult Function(TokenResponse? tokenResponse)?
        successForgotPasswordVerifyCode,
    TResult Function(TokenResponse? tokenResponse)? successResetPassword,
    TResult Function(
            AppErrors? error, void Function()? callback, bool isSocial)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, callback, isSocial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SuccessChangePassword value)
        successChangePassword,
    required TResult Function(SuccessLoginWithGoogle value)
        successLoginWithGoogle,
    required TResult Function(SuccessLoginWithFacebook value)
        successLoginWithFacebook,
    required TResult Function(SuccessForgotPassword value)
        successForgotPassword,
    required TResult Function(SuccessResendEmailVerify value)
        successResendEmailVerify,
    required TResult Function(SuccessVerifyEmail value) successVerifyEmail,
    required TResult Function(SuccessForgotPasswordVerifyCode value)
        successForgotPasswordVerifyCode,
    required TResult Function(SuccessResetPassword value) successResetPassword,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SuccessChangePassword value)? successChangePassword,
    TResult Function(SuccessLoginWithGoogle value)? successLoginWithGoogle,
    TResult Function(SuccessLoginWithFacebook value)? successLoginWithFacebook,
    TResult Function(SuccessForgotPassword value)? successForgotPassword,
    TResult Function(SuccessResendEmailVerify value)? successResendEmailVerify,
    TResult Function(SuccessVerifyEmail value)? successVerifyEmail,
    TResult Function(SuccessForgotPasswordVerifyCode value)?
        successForgotPasswordVerifyCode,
    TResult Function(SuccessResetPassword value)? successResetPassword,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserManagementState {
  const factory Error(
      {AppErrors? error,
      void Function()? callback,
      required bool isSocial}) = _$Error;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function()? get callback => throw _privateConstructorUsedError;
  bool get isSocial => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetProfileStateTearOff {
  const _$GetProfileStateTearOff();

  ProfileInitial profileInitial() {
    return const ProfileInitial();
  }

  ProfileLoading profileLoading() {
    return const ProfileLoading();
  }

  ProfileLoaded profileLoaded(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity}) {
    return ProfileLoaded(
      checkAppVersion: checkAppVersion,
      profileEntity: profileEntity,
    );
  }

  ProfileError profileError({AppErrors? error, void Function()? callback}) {
    return ProfileError(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $GetProfileState = _$GetProfileStateTearOff();

/// @nodoc
mixin _$GetProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitial,
    required TResult Function() profileLoading,
    required TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)
        profileLoaded,
    required TResult Function(AppErrors? error, void Function()? callback)
        profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitial,
    TResult Function()? profileLoading,
    TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)?
        profileLoaded,
    TResult Function(AppErrors? error, void Function()? callback)? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) profileInitial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(ProfileError value) profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? profileInitial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(ProfileError value)? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateCopyWith(
          GetProfileState value, $Res Function(GetProfileState) then) =
      _$GetProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfileStateCopyWithImpl<$Res>
    implements $GetProfileStateCopyWith<$Res> {
  _$GetProfileStateCopyWithImpl(this._value, this._then);

  final GetProfileState _value;
  // ignore: unused_field
  final $Res Function(GetProfileState) _then;
}

/// @nodoc
abstract class $ProfileInitialCopyWith<$Res> {
  factory $ProfileInitialCopyWith(
          ProfileInitial value, $Res Function(ProfileInitial) then) =
      _$ProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileInitialCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res>
    implements $ProfileInitialCopyWith<$Res> {
  _$ProfileInitialCopyWithImpl(
      ProfileInitial _value, $Res Function(ProfileInitial) _then)
      : super(_value, (v) => _then(v as ProfileInitial));

  @override
  ProfileInitial get _value => super._value as ProfileInitial;
}

/// @nodoc

class _$ProfileInitial implements ProfileInitial {
  const _$ProfileInitial();

  @override
  String toString() {
    return 'GetProfileState.profileInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitial,
    required TResult Function() profileLoading,
    required TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)
        profileLoaded,
    required TResult Function(AppErrors? error, void Function()? callback)
        profileError,
  }) {
    return profileInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitial,
    TResult Function()? profileLoading,
    TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)?
        profileLoaded,
    TResult Function(AppErrors? error, void Function()? callback)? profileError,
    required TResult orElse(),
  }) {
    if (profileInitial != null) {
      return profileInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) profileInitial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(ProfileError value) profileError,
  }) {
    return profileInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? profileInitial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(ProfileError value)? profileError,
    required TResult orElse(),
  }) {
    if (profileInitial != null) {
      return profileInitial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial implements GetProfileState {
  const factory ProfileInitial() = _$ProfileInitial;
}

/// @nodoc
abstract class $ProfileLoadingCopyWith<$Res> {
  factory $ProfileLoadingCopyWith(
          ProfileLoading value, $Res Function(ProfileLoading) then) =
      _$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileLoadingCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadingCopyWith<$Res> {
  _$ProfileLoadingCopyWithImpl(
      ProfileLoading _value, $Res Function(ProfileLoading) _then)
      : super(_value, (v) => _then(v as ProfileLoading));

  @override
  ProfileLoading get _value => super._value as ProfileLoading;
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'GetProfileState.profileLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitial,
    required TResult Function() profileLoading,
    required TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)
        profileLoaded,
    required TResult Function(AppErrors? error, void Function()? callback)
        profileError,
  }) {
    return profileLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitial,
    TResult Function()? profileLoading,
    TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)?
        profileLoaded,
    TResult Function(AppErrors? error, void Function()? callback)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) profileInitial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(ProfileError value) profileError,
  }) {
    return profileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? profileInitial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(ProfileError value)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements GetProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class $ProfileLoadedCopyWith<$Res> {
  factory $ProfileLoadedCopyWith(
          ProfileLoaded value, $Res Function(ProfileLoaded) then) =
      _$ProfileLoadedCopyWithImpl<$Res>;
  $Res call(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity});
}

/// @nodoc
class _$ProfileLoadedCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadedCopyWith<$Res> {
  _$ProfileLoadedCopyWithImpl(
      ProfileLoaded _value, $Res Function(ProfileLoaded) _then)
      : super(_value, (v) => _then(v as ProfileLoaded));

  @override
  ProfileLoaded get _value => super._value as ProfileLoaded;

  @override
  $Res call({
    Object? checkAppVersion = freezed,
    Object? profileEntity = freezed,
  }) {
    return _then(ProfileLoaded(
      checkAppVersion: checkAppVersion == freezed
          ? _value.checkAppVersion
          : checkAppVersion // ignore: cast_nullable_to_non_nullable
              as CheckAppVersionUpdatesEntity?,
      profileEntity: profileEntity == freezed
          ? _value.profileEntity
          : profileEntity // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
    ));
  }
}

/// @nodoc

class _$ProfileLoaded implements ProfileLoaded {
  const _$ProfileLoaded({this.checkAppVersion, this.profileEntity});

  @override
  final CheckAppVersionUpdatesEntity? checkAppVersion;
  @override
  final ProfileEntity? profileEntity;

  @override
  String toString() {
    return 'GetProfileState.profileLoaded(checkAppVersion: $checkAppVersion, profileEntity: $profileEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileLoaded &&
            (identical(other.checkAppVersion, checkAppVersion) ||
                const DeepCollectionEquality()
                    .equals(other.checkAppVersion, checkAppVersion)) &&
            (identical(other.profileEntity, profileEntity) ||
                const DeepCollectionEquality()
                    .equals(other.profileEntity, profileEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(checkAppVersion) ^
      const DeepCollectionEquality().hash(profileEntity);

  @JsonKey(ignore: true)
  @override
  $ProfileLoadedCopyWith<ProfileLoaded> get copyWith =>
      _$ProfileLoadedCopyWithImpl<ProfileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitial,
    required TResult Function() profileLoading,
    required TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)
        profileLoaded,
    required TResult Function(AppErrors? error, void Function()? callback)
        profileError,
  }) {
    return profileLoaded(checkAppVersion, profileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitial,
    TResult Function()? profileLoading,
    TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)?
        profileLoaded,
    TResult Function(AppErrors? error, void Function()? callback)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(checkAppVersion, profileEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) profileInitial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(ProfileError value) profileError,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? profileInitial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(ProfileError value)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements GetProfileState {
  const factory ProfileLoaded(
      {CheckAppVersionUpdatesEntity? checkAppVersion,
      ProfileEntity? profileEntity}) = _$ProfileLoaded;

  CheckAppVersionUpdatesEntity? get checkAppVersion =>
      throw _privateConstructorUsedError;
  ProfileEntity? get profileEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileLoadedCopyWith<ProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileErrorCopyWith<$Res> {
  factory $ProfileErrorCopyWith(
          ProfileError value, $Res Function(ProfileError) then) =
      _$ProfileErrorCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function()? callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ProfileErrorCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res>
    implements $ProfileErrorCopyWith<$Res> {
  _$ProfileErrorCopyWithImpl(
      ProfileError _value, $Res Function(ProfileError) _then)
      : super(_value, (v) => _then(v as ProfileError));

  @override
  ProfileError get _value => super._value as ProfileError;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ProfileError(
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

class _$ProfileError implements ProfileError {
  const _$ProfileError({this.error, this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function()? callback;

  @override
  String toString() {
    return 'GetProfileState.profileError(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileError &&
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
  $ProfileErrorCopyWith<ProfileError> get copyWith =>
      _$ProfileErrorCopyWithImpl<ProfileError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitial,
    required TResult Function() profileLoading,
    required TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)
        profileLoaded,
    required TResult Function(AppErrors? error, void Function()? callback)
        profileError,
  }) {
    return profileError(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitial,
    TResult Function()? profileLoading,
    TResult Function(CheckAppVersionUpdatesEntity? checkAppVersion,
            ProfileEntity? profileEntity)?
        profileLoaded,
    TResult Function(AppErrors? error, void Function()? callback)? profileError,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileInitial value) profileInitial,
    required TResult Function(ProfileLoading value) profileLoading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(ProfileError value) profileError,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? profileInitial,
    TResult Function(ProfileLoading value)? profileLoading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(ProfileError value)? profileError,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements GetProfileState {
  const factory ProfileError({AppErrors? error, void Function()? callback}) =
      _$ProfileError;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function()? get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileErrorCopyWith<ProfileError> get copyWith =>
      throw _privateConstructorUsedError;
}
