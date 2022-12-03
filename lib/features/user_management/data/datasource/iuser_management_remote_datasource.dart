import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/user_management/data/model/profile_model.dart';
import 'package:buy_luck/features/user_management/data/model/resend_email_verify_model.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/model/verify_email_model.dart';
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
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IUserManagementRemoteDataSource extends RemoteDataSource {
  /// Login method
  Future<Either<AppErrors, TokenResponse>> login({
    required LoginParams body,
  });

  /// Login FB
  Future<Either<AppErrors, TokenResponse>> loginViaFB({
    required SocialLoginParam body,
  });

  /// Login GOOGLE
  Future<Either<AppErrors, TokenResponse>> loginViaGoogle({
    required SocialLoginParam body,
  });

  /// Register method
  Future<Either<AppErrors, TokenResponse>> register({
    required RegisterBodyParam body,
  });

  /// Load profile information
  Future<Either<AppErrors, ProfileModel>> loadProfile({
    required NoParams param,
  });

  /// Load profile information
  Future<Either<AppErrors, EmptyResponse>> logOut({
    required NoParams param,
  });

  /// To change password
  Future<Either<AppErrors, TokenResponse>> changePassword(
      ChangePasswordParam param);

  /// To change email
  Future<Either<AppErrors, EmptyResponse>> changeEmail(ChangeEmailParam param);

  Future<Either<AppErrors, TokenResponse>> loginWithGoogle(
      GoogleLoginParam param);

  Future<Either<AppErrors, TokenResponse>> loginWithFacebook(
      FacebookLoginParam param);

  Future<Either<AppErrors, VerifyEmailModel>> verifyEmail(
      VerifyEmailParam param);

  Future<Either<AppErrors, ResendEmailVerifyModel>> resendEmailVerify(
      NoParams param);

  Future<Either<AppErrors, TokenResponse>> forgotPassword(
      ForgotPasswordParam param);

  Future<Either<AppErrors, TokenResponse>> passwordVerifyEmail(
      PasswordVerifyEmailParam param);

  Future<Either<AppErrors, TokenResponse>> resetPassword(
      ResetPasswordParam param);
}
