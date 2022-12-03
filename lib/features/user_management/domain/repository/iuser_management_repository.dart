import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/change_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/facebook_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/google_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/data/params/password_verify_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/resend_email_verify_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/verify_email_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IUserManagementRepository extends Repository {
  Future<Result<AppErrors, TokenResponse>> login({
    required LoginParams body,
  });

  Future<Result<AppErrors, TokenResponse>> loginViaFB({
    required SocialLoginParam body,
  });

  Future<Result<AppErrors, TokenResponse>> loginViaGoogle({
    required SocialLoginParam body,
  });

  Future<Result<AppErrors, TokenResponse>> register({
    required RegisterBodyParam body,
  });

  Future<Result<AppErrors, ProfileEntity>> loadProfile(
      {required NoParams param});

  /// To change password
  Future<Result<AppErrors, TokenResponse>> changePassword(
      ChangePasswordParam param);

  /// To change email
  Future<Result<AppErrors, EmptyResponse>> changeEmail(ChangeEmailParam param);

  Future<Result<AppErrors, EmptyResponse>> logOut(NoParams param);

  Future<Result<AppErrors, TokenResponse>> loginWithGoogle(
      GoogleLoginParam param);

  Future<Result<AppErrors, TokenResponse>> loginWithFacebook(
      FacebookLoginParam param);

  Future<Result<AppErrors, VerifyEmailEntity>> verifyEmail(
      VerifyEmailParam param);

  Future<Result<AppErrors, ResendEmailVerifyEntity>> resendEmailVerify(
      NoParams param);

  Future<Result<AppErrors, TokenResponse>> forgotPassword(
      ForgotPasswordParam param);

  Future<Result<AppErrors, TokenResponse>> passwordVerifyEmail(
      PasswordVerifyEmailParam param);

  Future<Result<AppErrors, TokenResponse>> resetPassword(
      ResetPasswordParam param);
}
