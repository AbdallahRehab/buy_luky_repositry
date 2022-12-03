import 'dart:ui';

import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/resend_email_verify_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/verify_email_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../home/domain/entity/check_app_version_updates_entity.dart';

part 'user_management_state.freezed.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState.initial() = Initial;
  const factory UserManagementState.loading() = Loading;
  const factory UserManagementState.loaded({TokenResponse? loginEntity}) =
      Loaded;
  const factory UserManagementState.successChangePassword() =
      SuccessChangePassword;
  const factory UserManagementState.successLoginWithGoogle() =
      SuccessLoginWithGoogle;

  const factory UserManagementState.successLoginWithFacebook() =
      SuccessLoginWithFacebook;

  const factory UserManagementState.successForgotPassword() =
      SuccessForgotPassword;

  const factory UserManagementState.successResendEmailVerify({
    ResendEmailVerifyEntity? resendEmailVerifyEntity,
  }) = SuccessResendEmailVerify;

  const factory UserManagementState.successVerifyEmail({
    VerifyEmailEntity? verifyEmailEntity,
  }) = SuccessVerifyEmail;

  const factory UserManagementState.successForgotPasswordVerifyCode({
    TokenResponse? tokenResponse,
  }) = SuccessForgotPasswordVerifyCode;

  const factory UserManagementState.successResetPassword({
    TokenResponse? tokenResponse,
  }) = SuccessResetPassword;

  const factory UserManagementState.error({
    AppErrors? error,
    VoidCallback? callback,
    required bool isSocial,
  }) = Error;
}

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.profileInitial() = ProfileInitial;

  const factory GetProfileState.profileLoading() = ProfileLoading;

  const factory GetProfileState.profileLoaded({
    CheckAppVersionUpdatesEntity? checkAppVersion,
    ProfileEntity? profileEntity,
  }) = ProfileLoaded;

  const factory GetProfileState.profileError({
    AppErrors? error,
    VoidCallback? callback,
  }) = ProfileError;
}
