// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_management_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserManagementEventTearOff {
  const _$UserManagementEventTearOff();

  Login login({LoginParams? loginBody}) {
    return Login(
      loginBody: loginBody,
    );
  }

  LoginViaSocialMedia loginViaSocialMedia(
      {SocialLoginParam? socialLoginParam}) {
    return LoginViaSocialMedia(
      socialLoginParam: socialLoginParam,
    );
  }

  Resgister resgister({RegisterBodyParam? registerBody}) {
    return Resgister(
      registerBody: registerBody,
    );
  }

  ChangePassword changePassword({ChangePasswordParam? changePasswordParam}) {
    return ChangePassword(
      changePasswordParam: changePasswordParam,
    );
  }

  LoginWithGoogle loginWithGoogle({GoogleLoginParam? googleLoginParam}) {
    return LoginWithGoogle(
      googleLoginParam: googleLoginParam,
    );
  }

  LoginWithFacebook loginWithFacebook(
      {FacebookLoginParam? facebookLoginParam}) {
    return LoginWithFacebook(
      facebookLoginParam: facebookLoginParam,
    );
  }

  VerifyEmail verifyEmail({VerifyEmailParam? verifyEmailParam}) {
    return VerifyEmail(
      verifyEmailParam: verifyEmailParam,
    );
  }

  ResendEmailVerify resendEmailVerify() {
    return const ResendEmailVerify();
  }

  ForgotPassword forgotPassword({ForgotPasswordParam? forgotPasswordParam}) {
    return ForgotPassword(
      forgotPasswordParam: forgotPasswordParam,
    );
  }

  ForgotPasswordVerifyCode forgotPasswordVerifyCode(
      {PasswordVerifyEmailParam? passwordVerifyEmailParam}) {
    return ForgotPasswordVerifyCode(
      passwordVerifyEmailParam: passwordVerifyEmailParam,
    );
  }

  ResetPassword resetPassword({ResetPasswordParam? resetPasswordParam}) {
    return ResetPassword(
      resetPasswordParam: resetPasswordParam,
    );
  }
}

/// @nodoc
const $UserManagementEvent = _$UserManagementEventTearOff();

/// @nodoc
mixin _$UserManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementEventCopyWith<$Res> {
  factory $UserManagementEventCopyWith(
          UserManagementEvent value, $Res Function(UserManagementEvent) then) =
      _$UserManagementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserManagementEventCopyWithImpl<$Res>
    implements $UserManagementEventCopyWith<$Res> {
  _$UserManagementEventCopyWithImpl(this._value, this._then);

  final UserManagementEvent _value;
  // ignore: unused_field
  final $Res Function(UserManagementEvent) _then;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  $Res call({LoginParams? loginBody});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> extends _$UserManagementEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;

  @override
  $Res call({
    Object? loginBody = freezed,
  }) {
    return _then(Login(
      loginBody: loginBody == freezed
          ? _value.loginBody
          : loginBody // ignore: cast_nullable_to_non_nullable
              as LoginParams?,
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login({this.loginBody});

  @override
  final LoginParams? loginBody;

  @override
  String toString() {
    return 'UserManagementEvent.login(loginBody: $loginBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.loginBody, loginBody) ||
                const DeepCollectionEquality()
                    .equals(other.loginBody, loginBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginBody);

  @JsonKey(ignore: true)
  @override
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return login(loginBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements UserManagementEvent {
  const factory Login({LoginParams? loginBody}) = _$Login;

  LoginParams? get loginBody => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginViaSocialMediaCopyWith<$Res> {
  factory $LoginViaSocialMediaCopyWith(
          LoginViaSocialMedia value, $Res Function(LoginViaSocialMedia) then) =
      _$LoginViaSocialMediaCopyWithImpl<$Res>;
  $Res call({SocialLoginParam? socialLoginParam});
}

/// @nodoc
class _$LoginViaSocialMediaCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $LoginViaSocialMediaCopyWith<$Res> {
  _$LoginViaSocialMediaCopyWithImpl(
      LoginViaSocialMedia _value, $Res Function(LoginViaSocialMedia) _then)
      : super(_value, (v) => _then(v as LoginViaSocialMedia));

  @override
  LoginViaSocialMedia get _value => super._value as LoginViaSocialMedia;

  @override
  $Res call({
    Object? socialLoginParam = freezed,
  }) {
    return _then(LoginViaSocialMedia(
      socialLoginParam: socialLoginParam == freezed
          ? _value.socialLoginParam
          : socialLoginParam // ignore: cast_nullable_to_non_nullable
              as SocialLoginParam?,
    ));
  }
}

/// @nodoc

class _$LoginViaSocialMedia implements LoginViaSocialMedia {
  const _$LoginViaSocialMedia({this.socialLoginParam});

  @override
  final SocialLoginParam? socialLoginParam;

  @override
  String toString() {
    return 'UserManagementEvent.loginViaSocialMedia(socialLoginParam: $socialLoginParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginViaSocialMedia &&
            (identical(other.socialLoginParam, socialLoginParam) ||
                const DeepCollectionEquality()
                    .equals(other.socialLoginParam, socialLoginParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(socialLoginParam);

  @JsonKey(ignore: true)
  @override
  $LoginViaSocialMediaCopyWith<LoginViaSocialMedia> get copyWith =>
      _$LoginViaSocialMediaCopyWithImpl<LoginViaSocialMedia>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return loginViaSocialMedia(socialLoginParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginViaSocialMedia != null) {
      return loginViaSocialMedia(socialLoginParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return loginViaSocialMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginViaSocialMedia != null) {
      return loginViaSocialMedia(this);
    }
    return orElse();
  }
}

abstract class LoginViaSocialMedia implements UserManagementEvent {
  const factory LoginViaSocialMedia({SocialLoginParam? socialLoginParam}) =
      _$LoginViaSocialMedia;

  SocialLoginParam? get socialLoginParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginViaSocialMediaCopyWith<LoginViaSocialMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResgisterCopyWith<$Res> {
  factory $ResgisterCopyWith(Resgister value, $Res Function(Resgister) then) =
      _$ResgisterCopyWithImpl<$Res>;
  $Res call({RegisterBodyParam? registerBody});
}

/// @nodoc
class _$ResgisterCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ResgisterCopyWith<$Res> {
  _$ResgisterCopyWithImpl(Resgister _value, $Res Function(Resgister) _then)
      : super(_value, (v) => _then(v as Resgister));

  @override
  Resgister get _value => super._value as Resgister;

  @override
  $Res call({
    Object? registerBody = freezed,
  }) {
    return _then(Resgister(
      registerBody: registerBody == freezed
          ? _value.registerBody
          : registerBody // ignore: cast_nullable_to_non_nullable
              as RegisterBodyParam?,
    ));
  }
}

/// @nodoc

class _$Resgister implements Resgister {
  const _$Resgister({this.registerBody});

  @override
  final RegisterBodyParam? registerBody;

  @override
  String toString() {
    return 'UserManagementEvent.resgister(registerBody: $registerBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Resgister &&
            (identical(other.registerBody, registerBody) ||
                const DeepCollectionEquality()
                    .equals(other.registerBody, registerBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(registerBody);

  @JsonKey(ignore: true)
  @override
  $ResgisterCopyWith<Resgister> get copyWith =>
      _$ResgisterCopyWithImpl<Resgister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return resgister(registerBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (resgister != null) {
      return resgister(registerBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resgister(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resgister != null) {
      return resgister(this);
    }
    return orElse();
  }
}

abstract class Resgister implements UserManagementEvent {
  const factory Resgister({RegisterBodyParam? registerBody}) = _$Resgister;

  RegisterBodyParam? get registerBody => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResgisterCopyWith<Resgister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordCopyWith<$Res> {
  factory $ChangePasswordCopyWith(
          ChangePassword value, $Res Function(ChangePassword) then) =
      _$ChangePasswordCopyWithImpl<$Res>;
  $Res call({ChangePasswordParam? changePasswordParam});
}

/// @nodoc
class _$ChangePasswordCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ChangePasswordCopyWith<$Res> {
  _$ChangePasswordCopyWithImpl(
      ChangePassword _value, $Res Function(ChangePassword) _then)
      : super(_value, (v) => _then(v as ChangePassword));

  @override
  ChangePassword get _value => super._value as ChangePassword;

  @override
  $Res call({
    Object? changePasswordParam = freezed,
  }) {
    return _then(ChangePassword(
      changePasswordParam: changePasswordParam == freezed
          ? _value.changePasswordParam
          : changePasswordParam // ignore: cast_nullable_to_non_nullable
              as ChangePasswordParam?,
    ));
  }
}

/// @nodoc

class _$ChangePassword implements ChangePassword {
  const _$ChangePassword({this.changePasswordParam});

  @override
  final ChangePasswordParam? changePasswordParam;

  @override
  String toString() {
    return 'UserManagementEvent.changePassword(changePasswordParam: $changePasswordParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePassword &&
            (identical(other.changePasswordParam, changePasswordParam) ||
                const DeepCollectionEquality()
                    .equals(other.changePasswordParam, changePasswordParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(changePasswordParam);

  @JsonKey(ignore: true)
  @override
  $ChangePasswordCopyWith<ChangePassword> get copyWith =>
      _$ChangePasswordCopyWithImpl<ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return changePassword(changePasswordParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(changePasswordParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePassword implements UserManagementEvent {
  const factory ChangePassword({ChangePasswordParam? changePasswordParam}) =
      _$ChangePassword;

  ChangePasswordParam? get changePasswordParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordCopyWith<ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWithGoogleCopyWith<$Res> {
  factory $LoginWithGoogleCopyWith(
          LoginWithGoogle value, $Res Function(LoginWithGoogle) then) =
      _$LoginWithGoogleCopyWithImpl<$Res>;
  $Res call({GoogleLoginParam? googleLoginParam});
}

/// @nodoc
class _$LoginWithGoogleCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $LoginWithGoogleCopyWith<$Res> {
  _$LoginWithGoogleCopyWithImpl(
      LoginWithGoogle _value, $Res Function(LoginWithGoogle) _then)
      : super(_value, (v) => _then(v as LoginWithGoogle));

  @override
  LoginWithGoogle get _value => super._value as LoginWithGoogle;

  @override
  $Res call({
    Object? googleLoginParam = freezed,
  }) {
    return _then(LoginWithGoogle(
      googleLoginParam: googleLoginParam == freezed
          ? _value.googleLoginParam
          : googleLoginParam // ignore: cast_nullable_to_non_nullable
              as GoogleLoginParam?,
    ));
  }
}

/// @nodoc

class _$LoginWithGoogle implements LoginWithGoogle {
  const _$LoginWithGoogle({this.googleLoginParam});

  @override
  final GoogleLoginParam? googleLoginParam;

  @override
  String toString() {
    return 'UserManagementEvent.loginWithGoogle(googleLoginParam: $googleLoginParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithGoogle &&
            (identical(other.googleLoginParam, googleLoginParam) ||
                const DeepCollectionEquality()
                    .equals(other.googleLoginParam, googleLoginParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(googleLoginParam);

  @JsonKey(ignore: true)
  @override
  $LoginWithGoogleCopyWith<LoginWithGoogle> get copyWith =>
      _$LoginWithGoogleCopyWithImpl<LoginWithGoogle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return loginWithGoogle(googleLoginParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(googleLoginParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogle implements UserManagementEvent {
  const factory LoginWithGoogle({GoogleLoginParam? googleLoginParam}) =
      _$LoginWithGoogle;

  GoogleLoginParam? get googleLoginParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginWithGoogleCopyWith<LoginWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWithFacebookCopyWith<$Res> {
  factory $LoginWithFacebookCopyWith(
          LoginWithFacebook value, $Res Function(LoginWithFacebook) then) =
      _$LoginWithFacebookCopyWithImpl<$Res>;
  $Res call({FacebookLoginParam? facebookLoginParam});
}

/// @nodoc
class _$LoginWithFacebookCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $LoginWithFacebookCopyWith<$Res> {
  _$LoginWithFacebookCopyWithImpl(
      LoginWithFacebook _value, $Res Function(LoginWithFacebook) _then)
      : super(_value, (v) => _then(v as LoginWithFacebook));

  @override
  LoginWithFacebook get _value => super._value as LoginWithFacebook;

  @override
  $Res call({
    Object? facebookLoginParam = freezed,
  }) {
    return _then(LoginWithFacebook(
      facebookLoginParam: facebookLoginParam == freezed
          ? _value.facebookLoginParam
          : facebookLoginParam // ignore: cast_nullable_to_non_nullable
              as FacebookLoginParam?,
    ));
  }
}

/// @nodoc

class _$LoginWithFacebook implements LoginWithFacebook {
  const _$LoginWithFacebook({this.facebookLoginParam});

  @override
  final FacebookLoginParam? facebookLoginParam;

  @override
  String toString() {
    return 'UserManagementEvent.loginWithFacebook(facebookLoginParam: $facebookLoginParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithFacebook &&
            (identical(other.facebookLoginParam, facebookLoginParam) ||
                const DeepCollectionEquality()
                    .equals(other.facebookLoginParam, facebookLoginParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(facebookLoginParam);

  @JsonKey(ignore: true)
  @override
  $LoginWithFacebookCopyWith<LoginWithFacebook> get copyWith =>
      _$LoginWithFacebookCopyWithImpl<LoginWithFacebook>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return loginWithFacebook(facebookLoginParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(facebookLoginParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class LoginWithFacebook implements UserManagementEvent {
  const factory LoginWithFacebook({FacebookLoginParam? facebookLoginParam}) =
      _$LoginWithFacebook;

  FacebookLoginParam? get facebookLoginParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginWithFacebookCopyWith<LoginWithFacebook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailCopyWith<$Res> {
  factory $VerifyEmailCopyWith(
          VerifyEmail value, $Res Function(VerifyEmail) then) =
      _$VerifyEmailCopyWithImpl<$Res>;
  $Res call({VerifyEmailParam? verifyEmailParam});
}

/// @nodoc
class _$VerifyEmailCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $VerifyEmailCopyWith<$Res> {
  _$VerifyEmailCopyWithImpl(
      VerifyEmail _value, $Res Function(VerifyEmail) _then)
      : super(_value, (v) => _then(v as VerifyEmail));

  @override
  VerifyEmail get _value => super._value as VerifyEmail;

  @override
  $Res call({
    Object? verifyEmailParam = freezed,
  }) {
    return _then(VerifyEmail(
      verifyEmailParam: verifyEmailParam == freezed
          ? _value.verifyEmailParam
          : verifyEmailParam // ignore: cast_nullable_to_non_nullable
              as VerifyEmailParam?,
    ));
  }
}

/// @nodoc

class _$VerifyEmail implements VerifyEmail {
  const _$VerifyEmail({this.verifyEmailParam});

  @override
  final VerifyEmailParam? verifyEmailParam;

  @override
  String toString() {
    return 'UserManagementEvent.verifyEmail(verifyEmailParam: $verifyEmailParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifyEmail &&
            (identical(other.verifyEmailParam, verifyEmailParam) ||
                const DeepCollectionEquality()
                    .equals(other.verifyEmailParam, verifyEmailParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verifyEmailParam);

  @JsonKey(ignore: true)
  @override
  $VerifyEmailCopyWith<VerifyEmail> get copyWith =>
      _$VerifyEmailCopyWithImpl<VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return verifyEmail(verifyEmailParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(verifyEmailParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class VerifyEmail implements UserManagementEvent {
  const factory VerifyEmail({VerifyEmailParam? verifyEmailParam}) =
      _$VerifyEmail;

  VerifyEmailParam? get verifyEmailParam => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailCopyWith<VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendEmailVerifyCopyWith<$Res> {
  factory $ResendEmailVerifyCopyWith(
          ResendEmailVerify value, $Res Function(ResendEmailVerify) then) =
      _$ResendEmailVerifyCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendEmailVerifyCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ResendEmailVerifyCopyWith<$Res> {
  _$ResendEmailVerifyCopyWithImpl(
      ResendEmailVerify _value, $Res Function(ResendEmailVerify) _then)
      : super(_value, (v) => _then(v as ResendEmailVerify));

  @override
  ResendEmailVerify get _value => super._value as ResendEmailVerify;
}

/// @nodoc

class _$ResendEmailVerify implements ResendEmailVerify {
  const _$ResendEmailVerify();

  @override
  String toString() {
    return 'UserManagementEvent.resendEmailVerify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendEmailVerify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return resendEmailVerify();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (resendEmailVerify != null) {
      return resendEmailVerify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resendEmailVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resendEmailVerify != null) {
      return resendEmailVerify(this);
    }
    return orElse();
  }
}

abstract class ResendEmailVerify implements UserManagementEvent {
  const factory ResendEmailVerify() = _$ResendEmailVerify;
}

/// @nodoc
abstract class $ForgotPasswordCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
  $Res call({ForgotPasswordParam? forgotPasswordParam});
}

/// @nodoc
class _$ForgotPasswordCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(
      ForgotPassword _value, $Res Function(ForgotPassword) _then)
      : super(_value, (v) => _then(v as ForgotPassword));

  @override
  ForgotPassword get _value => super._value as ForgotPassword;

  @override
  $Res call({
    Object? forgotPasswordParam = freezed,
  }) {
    return _then(ForgotPassword(
      forgotPasswordParam: forgotPasswordParam == freezed
          ? _value.forgotPasswordParam
          : forgotPasswordParam // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordParam?,
    ));
  }
}

/// @nodoc

class _$ForgotPassword implements ForgotPassword {
  const _$ForgotPassword({this.forgotPasswordParam});

  @override
  final ForgotPasswordParam? forgotPasswordParam;

  @override
  String toString() {
    return 'UserManagementEvent.forgotPassword(forgotPasswordParam: $forgotPasswordParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPassword &&
            (identical(other.forgotPasswordParam, forgotPasswordParam) ||
                const DeepCollectionEquality()
                    .equals(other.forgotPasswordParam, forgotPasswordParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forgotPasswordParam);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordCopyWith<ForgotPassword> get copyWith =>
      _$ForgotPasswordCopyWithImpl<ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return forgotPassword(forgotPasswordParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(forgotPasswordParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements UserManagementEvent {
  const factory ForgotPassword({ForgotPasswordParam? forgotPasswordParam}) =
      _$ForgotPassword;

  ForgotPasswordParam? get forgotPasswordParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordCopyWith<ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordVerifyCodeCopyWith<$Res> {
  factory $ForgotPasswordVerifyCodeCopyWith(ForgotPasswordVerifyCode value,
          $Res Function(ForgotPasswordVerifyCode) then) =
      _$ForgotPasswordVerifyCodeCopyWithImpl<$Res>;
  $Res call({PasswordVerifyEmailParam? passwordVerifyEmailParam});
}

/// @nodoc
class _$ForgotPasswordVerifyCodeCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ForgotPasswordVerifyCodeCopyWith<$Res> {
  _$ForgotPasswordVerifyCodeCopyWithImpl(ForgotPasswordVerifyCode _value,
      $Res Function(ForgotPasswordVerifyCode) _then)
      : super(_value, (v) => _then(v as ForgotPasswordVerifyCode));

  @override
  ForgotPasswordVerifyCode get _value =>
      super._value as ForgotPasswordVerifyCode;

  @override
  $Res call({
    Object? passwordVerifyEmailParam = freezed,
  }) {
    return _then(ForgotPasswordVerifyCode(
      passwordVerifyEmailParam: passwordVerifyEmailParam == freezed
          ? _value.passwordVerifyEmailParam
          : passwordVerifyEmailParam // ignore: cast_nullable_to_non_nullable
              as PasswordVerifyEmailParam?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordVerifyCode implements ForgotPasswordVerifyCode {
  const _$ForgotPasswordVerifyCode({this.passwordVerifyEmailParam});

  @override
  final PasswordVerifyEmailParam? passwordVerifyEmailParam;

  @override
  String toString() {
    return 'UserManagementEvent.forgotPasswordVerifyCode(passwordVerifyEmailParam: $passwordVerifyEmailParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForgotPasswordVerifyCode &&
            (identical(
                    other.passwordVerifyEmailParam, passwordVerifyEmailParam) ||
                const DeepCollectionEquality().equals(
                    other.passwordVerifyEmailParam, passwordVerifyEmailParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordVerifyEmailParam);

  @JsonKey(ignore: true)
  @override
  $ForgotPasswordVerifyCodeCopyWith<ForgotPasswordVerifyCode> get copyWith =>
      _$ForgotPasswordVerifyCodeCopyWithImpl<ForgotPasswordVerifyCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return forgotPasswordVerifyCode(passwordVerifyEmailParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPasswordVerifyCode != null) {
      return forgotPasswordVerifyCode(passwordVerifyEmailParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return forgotPasswordVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPasswordVerifyCode != null) {
      return forgotPasswordVerifyCode(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordVerifyCode implements UserManagementEvent {
  const factory ForgotPasswordVerifyCode(
          {PasswordVerifyEmailParam? passwordVerifyEmailParam}) =
      _$ForgotPasswordVerifyCode;

  PasswordVerifyEmailParam? get passwordVerifyEmailParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordVerifyCodeCopyWith<ForgotPasswordVerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
  $Res call({ResetPasswordParam? resetPasswordParam});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(
      ResetPassword _value, $Res Function(ResetPassword) _then)
      : super(_value, (v) => _then(v as ResetPassword));

  @override
  ResetPassword get _value => super._value as ResetPassword;

  @override
  $Res call({
    Object? resetPasswordParam = freezed,
  }) {
    return _then(ResetPassword(
      resetPasswordParam: resetPasswordParam == freezed
          ? _value.resetPasswordParam
          : resetPasswordParam // ignore: cast_nullable_to_non_nullable
              as ResetPasswordParam?,
    ));
  }
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword({this.resetPasswordParam});

  @override
  final ResetPasswordParam? resetPasswordParam;

  @override
  String toString() {
    return 'UserManagementEvent.resetPassword(resetPasswordParam: $resetPasswordParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword &&
            (identical(other.resetPasswordParam, resetPasswordParam) ||
                const DeepCollectionEquality()
                    .equals(other.resetPasswordParam, resetPasswordParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(resetPasswordParam);

  @JsonKey(ignore: true)
  @override
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      _$ResetPasswordCopyWithImpl<ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams? loginBody) login,
    required TResult Function(SocialLoginParam? socialLoginParam)
        loginViaSocialMedia,
    required TResult Function(RegisterBodyParam? registerBody) resgister,
    required TResult Function(ChangePasswordParam? changePasswordParam)
        changePassword,
    required TResult Function(GoogleLoginParam? googleLoginParam)
        loginWithGoogle,
    required TResult Function(FacebookLoginParam? facebookLoginParam)
        loginWithFacebook,
    required TResult Function(VerifyEmailParam? verifyEmailParam) verifyEmail,
    required TResult Function() resendEmailVerify,
    required TResult Function(ForgotPasswordParam? forgotPasswordParam)
        forgotPassword,
    required TResult Function(
            PasswordVerifyEmailParam? passwordVerifyEmailParam)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPasswordParam? resetPasswordParam)
        resetPassword,
  }) {
    return resetPassword(resetPasswordParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams? loginBody)? login,
    TResult Function(SocialLoginParam? socialLoginParam)? loginViaSocialMedia,
    TResult Function(RegisterBodyParam? registerBody)? resgister,
    TResult Function(ChangePasswordParam? changePasswordParam)? changePassword,
    TResult Function(GoogleLoginParam? googleLoginParam)? loginWithGoogle,
    TResult Function(FacebookLoginParam? facebookLoginParam)? loginWithFacebook,
    TResult Function(VerifyEmailParam? verifyEmailParam)? verifyEmail,
    TResult Function()? resendEmailVerify,
    TResult Function(ForgotPasswordParam? forgotPasswordParam)? forgotPassword,
    TResult Function(PasswordVerifyEmailParam? passwordVerifyEmailParam)?
        forgotPasswordVerifyCode,
    TResult Function(ResetPasswordParam? resetPasswordParam)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(resetPasswordParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(LoginViaSocialMedia value) loginViaSocialMedia,
    required TResult Function(Resgister value) resgister,
    required TResult Function(ChangePassword value) changePassword,
    required TResult Function(LoginWithGoogle value) loginWithGoogle,
    required TResult Function(LoginWithFacebook value) loginWithFacebook,
    required TResult Function(VerifyEmail value) verifyEmail,
    required TResult Function(ResendEmailVerify value) resendEmailVerify,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordVerifyCode value)
        forgotPasswordVerifyCode,
    required TResult Function(ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(LoginViaSocialMedia value)? loginViaSocialMedia,
    TResult Function(Resgister value)? resgister,
    TResult Function(ChangePassword value)? changePassword,
    TResult Function(LoginWithGoogle value)? loginWithGoogle,
    TResult Function(LoginWithFacebook value)? loginWithFacebook,
    TResult Function(VerifyEmail value)? verifyEmail,
    TResult Function(ResendEmailVerify value)? resendEmailVerify,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordVerifyCode value)? forgotPasswordVerifyCode,
    TResult Function(ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements UserManagementEvent {
  const factory ResetPassword({ResetPasswordParam? resetPasswordParam}) =
      _$ResetPassword;

  ResetPasswordParam? get resetPasswordParam =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
