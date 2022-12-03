import 'package:buy_luck/features/user_management/data/model/resend_email_verify_model.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/model/verify_email_model.dart';
import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/change_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/facebook_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/google_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/password_verify_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';
import '../../../../core/constants/enums/http_method.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/user_management/data/datasource/iuser_management_remote_datasource.dart';
import 'package:buy_luck/features/user_management/data/model/profile_model.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserManagementRemoteDataSource)
class UserManagementRemoteDataSource extends IUserManagementRemoteDataSource {
  /// Implementation of login method
  @override
  Future<Either<AppErrors, TokenResponse>> login({required LoginParams body}) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_ACCOUNT_LOGIN,
      cancelToken: body.cancelToken,
      body: body.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> register(
      {required RegisterBodyParam body}) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_ACCOUNT_REGISTER,
      cancelToken: body.cancelToken,
      body: body.toMap(),
      isFormData: true,
    );
  }

  /// Loading profile implementation
  @override
  Future<Either<AppErrors, ProfileModel>> loadProfile(
      {required NoParams param}) {
    return request<ProfileModel>(
      converter: (json) => ProfileModel.fromMap(json),
      method: HttpMethod.GET,
      url: API_ACCOUNT_PROFILE,
      cancelToken: param.cancelToken,
      withAuthentication: true,
    );
  }

  //logout
  @override
  Future<Either<AppErrors, EmptyResponse>> logOut({required NoParams param}) {
    return request(
      converter: (json) => EmptyResponse(
          message: json['message'],
          succeed: json['code'] == 200 ? true : false),
      method: HttpMethod.POST,
      url: API_LOGOUT,
      body: {},
      cancelToken: param.cancelToken,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, EmptyResponse>> changeEmail(ChangeEmailParam param) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AppErrors, TokenResponse>> changePassword(
      ChangePasswordParam param) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_CHANGE_PASSWORD,
      body: param.toMap(),
      cancelToken: param.cancelToken,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> loginWithGoogle(
      GoogleLoginParam param) {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<AppErrors, TokenResponse>> loginWithFacebook(
      FacebookLoginParam param) {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AppErrors, VerifyEmailModel>> verifyEmail(
      VerifyEmailParam param) {
    return request<VerifyEmailModel>(
      converter: (json) => VerifyEmailModel.fromMap(json),
      method: HttpMethod.POST,
      url: API_VERIFY_EMAIL,
      withAuthentication: true,
      body: param.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, ResendEmailVerifyModel>> resendEmailVerify(
      NoParams param) {
    return request<ResendEmailVerifyModel>(
      converter: (json) => ResendEmailVerifyModel.fromMap(json),
      method: HttpMethod.GET,
      url: API_RESEND_EMAIL_VERIFY,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> forgotPassword(
      ForgotPasswordParam param) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_FORGOT_PASSWORD,
      withAuthentication: false,
      body: param.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> passwordVerifyEmail(
      PasswordVerifyEmailParam param) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_PASSWORD_VERIFY_EMAIL,
      withAuthentication: false,
      body: param.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> resetPassword(
      ResetPasswordParam param) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_RESET_PASSWORD,
      withAuthentication: true,
      body: param.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> loginViaFB(
      {required SocialLoginParam body}) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_FB_LOGIN,
      cancelToken: body.cancelToken,
      body: body.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, TokenResponse>> loginViaGoogle(
      {required SocialLoginParam body}) {
    return request<TokenResponse>(
      converter: (json) => TokenResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_GOOGLE_LOGIN,
      cancelToken: body.cancelToken,
      body: body.toMap(),
    );
  }
}
