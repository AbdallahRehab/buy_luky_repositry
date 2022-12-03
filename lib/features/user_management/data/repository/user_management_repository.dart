import 'package:buy_luck/features/user_management/data/model/resend_email_verify_model.dart';
import 'package:buy_luck/features/user_management/data/model/token_response.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/password_verify_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/domain/entity/resend_email_verify_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/verify_email_entity.dart';
import 'package:buy_luck/features/user_management/data/model/verify_email_model.dart';
import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/change_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/facebook_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/google_login_param.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/datasources/shared_preference.dart';
import '../../../../core/errors/app_errors.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/user_management/data/datasource/iuser_management_remote_datasource.dart';
import 'package:buy_luck/features/user_management/data/model/profile_model.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:buy_luck/core/constants/app/app_constants.dart';

@Injectable(as: IUserManagementRepository)
class UserManagementRepository extends IUserManagementRepository {
  final IUserManagementRemoteDataSource _iUserManagementRemoteDataSource;

  UserManagementRepository(this._iUserManagementRemoteDataSource);

  @override
  Future<Result<AppErrors, TokenResponse>> login(
      {required LoginParams body}) async {
    final remote = await _iUserManagementRemoteDataSource.login(
      body: body,
    );

    /// Persist token if exists.
    if (remote.isRight()) {
      final data = (remote as Right<AppErrors, TokenResponse>).value;
      if (data.token.isNotEmpty) {
        await persistToken(data.token);
      }

      // print("isVerfiy : ${data.isVerfiy == 0 ? false : true}");
      await persistVerifyEmail(data.isVerfiy == 0 ? false : true);
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> loginViaFB(
      {required SocialLoginParam body}) async {
    final remote = await _iUserManagementRemoteDataSource.loginViaFB(
      body: body,
    );

    /// Persist token if exists.
    if (remote.isRight()) {
      final data = (remote as Right<AppErrors, TokenResponse>).value;
      if (data.token.isNotEmpty) {
        await persistToken(data.token);
      }

      // print("isVerfiy : ${data.isVerfiy == 0 ? false : true}");
      await persistVerifyEmail(data.isVerfiy == 0 ? false : true);
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> loginViaGoogle(
      {required SocialLoginParam body}) async {
    final remote = await _iUserManagementRemoteDataSource.loginViaGoogle(
      body: body,
    );

    /// Persist token if exists.
    if (remote.isRight()) {
      final data = (remote as Right<AppErrors, TokenResponse>).value;
      if (data.token.isNotEmpty) {
        await persistToken(data.token);
      }

      // print("isVerfiy : ${data.isVerfiy == 0 ? false : true}");
      await persistVerifyEmail(data.isVerfiy == 0 ? false : true);
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, ProfileEntity>> loadProfile(
      {required NoParams param}) async {
    final remote =
        await _iUserManagementRemoteDataSource.loadProfile(param: param);
    return execute<ProfileModel, ProfileEntity>(remoteResult: remote);
  }



  @override
  Future<Result<AppErrors, TokenResponse>> register(
      {required RegisterBodyParam body}) async {
    final remote = await _iUserManagementRemoteDataSource.register(
      body: body,
    );

    /// Persist token if exists.
    if (remote.isRight()) {
      final data = (remote as Right<AppErrors, TokenResponse>).value;
      if (data.token.isNotEmpty) {
        await persistToken(data.token);
      }
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remote);
  }

  /// Operations related to store user data
  //  ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇

  /// deleteToken
  static Future<void> deleteToken() async {
    final prefs = await SpUtil.getInstance();
    await prefs.remove(KEY_TOKEN);
    return;
  }

  /// deleteFcmToken
  static Future<void> deleteFcmToken() async {
    final prefs = await SpUtil.getInstance();
    await prefs.remove(KEY_FIREBASE_TOKEN);
    return;
  }

  /// persistToken
  static Future<void> persistToken(String token) async {
    final prefs = await SpUtil.getInstance();
    final tempToken1 = token.substring(0, 13);
    final tempToken2 = token.substring(13);
    final reversedTempToken1 = tempToken1.split("").reversed.join();
    final reversedTempToken2 = tempToken2.split("").reversed.join();
    final newToken = ("$reversedTempToken2$reversedTempToken1");
    await prefs.putString(KEY_TOKEN, newToken);
    return;
  }

  /// persistFcmToken
  static Future<void> persistFcmToken(String token) async {
    final prefs = await SpUtil.getInstance();
    await prefs.putString(KEY_FIREBASE_TOKEN, token);
    return;
  }

  /// persist Old FcmToken
  static Future<void> persistOldFcmToken(String oldToken) async {
    final prefs = await SpUtil.getInstance();
    await prefs.putString(KEY__OLD_FIREBASE_TOKEN, oldToken);
    return;
  }

  static Future<void> persistVerifyEmail(bool verifyEmail) async {
    final prefs = await SpUtil.getInstance();
    await prefs.putBool(KEY_VERIFY_EMAIL, verifyEmail);
    return;
  }

  static Future<bool?> get isVerify async {
    final prefs = await SpUtil.getInstance();
    if (prefs.getBool(KEY_VERIFY_EMAIL) == null) {
      return false;
    } else {
      return prefs.getBool(KEY_VERIFY_EMAIL);
    }
  }

  /// read authToken
  static Future<String> get authToken async {
    final prefs = await SpUtil.getInstance();
    String? tempToken = await prefs.getString(KEY_TOKEN);
    final tempToken2 = tempToken!.substring(13, tempToken.length);
    final tempToken1 = tempToken.substring(0, 13);
    final reversedTempToken1 = tempToken1.split("").reversed.join();
    final reversedTempToken2 = tempToken2.split("").reversed.join();
    final newToken = ("$reversedTempToken2$reversedTempToken1");
    return newToken;
  }

  /// read fcmToken
  static Future<String?> get fcmToken async {
    final prefs = await SpUtil.getInstance();
    return await prefs.getString(KEY_FIREBASE_TOKEN);
  }

  /// read old fcmToken
  static Future<String?> get oldFcmToken async {
    final prefs = await SpUtil.getInstance();
    return await prefs.getString(KEY__OLD_FIREBASE_TOKEN);
  }

  /// check if hasToken or not
  static Future<bool> get hasToken async {
    final prefs = await SpUtil.getInstance();
    var token;
    try {
      token = await prefs.getString(KEY_TOKEN);
    } catch (e) {
      return false;
    }
    if (token != null && token.isNotEmpty) return true;
    return false;
  }

  /// check if hasFcmToken or not
  static Future<bool> get hasFcmToken async {
    final prefs = await SpUtil.getInstance();
    final token = await prefs.getString(KEY_FIREBASE_TOKEN);
    if (token != null && token.isNotEmpty) return true;
    return false;
  }

  @override
  Future<Result<AppErrors, EmptyResponse>> changeEmail(
      ChangeEmailParam param) async {
    final result = await _iUserManagementRemoteDataSource.changeEmail(param);
    return executeForNoEntity(remoteResult: result);
  }

  @override
  Future<Result<AppErrors, EmptyResponse>> logOut(
      NoParams param) async {
    final result = await _iUserManagementRemoteDataSource.logOut(param: param);
    return executeForNoEntity(remoteResult: result);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> changePassword(
      ChangePasswordParam param) async {
    final result = await _iUserManagementRemoteDataSource.changePassword(param);

    /// Persist token if exists.
    if (result.isRight()) {
      final data = (result as Right<AppErrors, TokenResponse>).value;
      if (data.token.isNotEmpty) {
        await persistToken(data.token);
      }
    }
    return executeForNoEntity<TokenResponse>(remoteResult: result);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> loginWithGoogle(
      GoogleLoginParam param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.loginWithGoogle(param);
    return executeForNoEntity<TokenResponse>(remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> loginWithFacebook(
      FacebookLoginParam param) {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Result<AppErrors, ResendEmailVerifyEntity>> resendEmailVerify(
      NoParams param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.resendEmailVerify(param);
    return execute<ResendEmailVerifyModel, ResendEmailVerifyEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, VerifyEmailEntity>> verifyEmail(
      VerifyEmailParam param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.verifyEmail(param);
    if (remoteResult.isRight()) {
      final data = (remoteResult as Right<AppErrors, VerifyEmailModel>).value;
      if ((data.message).contains("تم")) {
        await persistVerifyEmail(true);
      } else {
        await persistVerifyEmail(false);
      }
    }
    return execute<VerifyEmailModel, VerifyEmailEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> forgotPassword(
      ForgotPasswordParam param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.forgotPassword(param);
    return executeForNoEntity<TokenResponse>(remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> passwordVerifyEmail(
      PasswordVerifyEmailParam param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.passwordVerifyEmail(param);

    if (remoteResult.isRight()) {
      var tokenResponse =
          (remoteResult as Right<AppErrors, TokenResponse>).value;

      if (tokenResponse.token.isNotEmpty) {
        await persistToken(tokenResponse.token);
      }
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, TokenResponse>> resetPassword(
      ResetPasswordParam param) async {
    final remoteResult =
        await _iUserManagementRemoteDataSource.resetPassword(param);
    if (remoteResult.isRight()) {
      var tokenResponse =
          (remoteResult as Right<AppErrors, TokenResponse>).value;

      if (tokenResponse.token.isNotEmpty) {
        await deleteToken();
      }
    }
    return executeForNoEntity<TokenResponse>(remoteResult: remoteResult);
  }
}
