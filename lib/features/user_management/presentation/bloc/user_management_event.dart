import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/data/params/password_verify_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/data/params/google_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:buy_luck/features/user_management/data/params/facebook_login_param.dart';

part 'user_management_event.freezed.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.login({LoginParams? loginBody}) = Login;
  const factory UserManagementEvent.loginViaSocialMedia(
      {SocialLoginParam? socialLoginParam}) = LoginViaSocialMedia;
  const factory UserManagementEvent.resgister(
      {RegisterBodyParam? registerBody}) = Resgister;
  const factory UserManagementEvent.changePassword(
      {ChangePasswordParam? changePasswordParam}) = ChangePassword;
  const factory UserManagementEvent.loginWithGoogle(
      {GoogleLoginParam? googleLoginParam}) = LoginWithGoogle;
  const factory UserManagementEvent.loginWithFacebook(
      {FacebookLoginParam? facebookLoginParam}) = LoginWithFacebook;
  const factory UserManagementEvent.verifyEmail(
      {VerifyEmailParam? verifyEmailParam}) = VerifyEmail;
  const factory UserManagementEvent.resendEmailVerify() = ResendEmailVerify;
  const factory UserManagementEvent.forgotPassword(
      {ForgotPasswordParam? forgotPasswordParam}) = ForgotPassword;
  const factory UserManagementEvent.forgotPasswordVerifyCode(
          {PasswordVerifyEmailParam? passwordVerifyEmailParam}) =
      ForgotPasswordVerifyCode;
  const factory UserManagementEvent.resetPassword(
      {ResetPasswordParam? resetPasswordParam}) = ResetPassword;
}
