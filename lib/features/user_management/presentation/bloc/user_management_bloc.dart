import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';
import 'package:buy_luck/features/user_management/domain/usecase/change_password_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/forgot_password_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/load_profile_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/login_fb_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/login_google_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/login_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/login_with_facebook_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/login_with_google_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/logout_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/password_verify_email_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/register_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/resend_email_verify_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/reset_password_usecase.dart';
import 'package:buy_luck/features/user_management/domain/usecase/verify_email_usecase.dart';
import 'package:provider/provider.dart';

import '../../../../core/navigation/navigation_service.dart';
import './bloc.dart';
import '../../../../di/service_locator.dart';

class UserManagementBloc
    extends Bloc<UserManagementEvent, UserManagementState> {
  UserManagementBloc() : super(UserManagementState.initial());

  @override
  Stream<UserManagementState> mapEventToState(
    UserManagementEvent event,
  ) async* {
    // Instantiating states using factories
    yield UserManagementState.loading();
    // Exhaustive when "statement"
    yield* event.map(
      login: (e) => mapLoginToState(e),
      resgister: _mapRegisterToState,
      changePassword: (e) => _mapChangePasswordToState(e),
      loginWithGoogle: (e) => _mapLoginWithGoogleToState(e),
      loginWithFacebook: (e) => _mapLoginWithFacebookToState(e),
      verifyEmail: (e) => _mapVerifyEmailToState(e),
      resendEmailVerify: (e) => _mapResendEmailVerifyToState(e),
      forgotPassword: (e) => _mapForgotPasswordToState(e),
      forgotPasswordVerifyCode: (e) => _mapForgotPasswordVerifyCodeToState(e),
      resetPassword: (e) => _mapResetPasswordToState(e),
      loginViaSocialMedia: _mapLoginSocialToState,
    );
  }

  Stream<UserManagementState> mapLoginToState(Login e) async* {
    var loginUseCase = LoginUseCase(getIt<IUserManagementRepository>());

    final result = await loginUseCase.call(
      LoginParams(
        phone: e.loginBody!.phone,
        password: e.loginBody!.password,
        cancelToken: e.loginBody!.cancelToken,
        fcm: e.loginBody!.fcm,
      ),
    );
    if (result.hasDataOnly) {
      yield UserManagementState.loaded(loginEntity: result.data);
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(e),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapRegisterToState(Resgister event) async* {
    var registerUseCase = RegisterUseCase(getIt<IUserManagementRepository>());

    final result = await registerUseCase.call(
      event.registerBody!,
    );
    if (result.hasDataOnly) {
      yield UserManagementState.loaded(loginEntity: result.data);
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapChangePasswordToState(
      ChangePassword event) async* {
    yield UserManagementState.loading();
    var changePasswordUsecase =
        ChangePasswordUsecase(getIt<IUserManagementRepository>());

    var result = await changePasswordUsecase.call(event.changePasswordParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successChangePassword();
    } else {
      print('EEEEE ${result.error}');
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }



  Stream<UserManagementState> _mapLoginWithGoogleToState(
      LoginWithGoogle event) async* {
    yield UserManagementState.loading();

    var loginWithGoogleUsecase =
        LoginWithGoogleUsecase(getIt<IUserManagementRepository>());

    var result = await loginWithGoogleUsecase.call(event.googleLoginParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successLoginWithGoogle();
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: true,
      );
    }
  }

  Stream<UserManagementState> _mapLoginWithFacebookToState(
      LoginWithFacebook event) async* {
    yield UserManagementState.loading();

    var loginWithFacebookUsecase =
        LoginWithFacebookUsecase(getIt<IUserManagementRepository>());

    var result = await loginWithFacebookUsecase.call(event.facebookLoginParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successLoginWithFacebook();
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: true,
      );
    }
  }

  Stream<UserManagementState> _mapVerifyEmailToState(VerifyEmail event) async* {
    yield UserManagementState.loading();

    var verifyEmailUsecase =
        VerifyEmailUsecase(getIt<IUserManagementRepository>());

    var result = await verifyEmailUsecase.call(event.verifyEmailParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successVerifyEmail(
          verifyEmailEntity: result.data);
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapResendEmailVerifyToState(
      ResendEmailVerify event) async* {
    yield UserManagementState.loading();

    var resendEmailVerifyUsecase =
        ResendEmailVerifyUsecase(getIt<IUserManagementRepository>());

    var result = await resendEmailVerifyUsecase.call(NoParams());

    if (result.hasDataOnly) {
      yield UserManagementState.successResendEmailVerify(
          resendEmailVerifyEntity: result.data);
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapForgotPasswordToState(
      ForgotPassword event) async* {
    yield UserManagementState.loading();
    var forgotPasswordUsecase =
        ForgotPasswordUsecase(getIt<IUserManagementRepository>());
    var result = await forgotPasswordUsecase.call(event.forgotPasswordParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successForgotPassword();
    } else {
      // yield UserManagementState.error(
      //   error: result.error,
      //   callback: () => this.add(event),
      // );
      yield UserManagementState.successForgotPassword();
    }
  }

  Stream<UserManagementState> _mapForgotPasswordVerifyCodeToState(
      ForgotPasswordVerifyCode event) async* {
    yield UserManagementState.loading();

    var passwordVerifyEmailUsecase =
        PasswordVerifyEmailUsecase(getIt<IUserManagementRepository>());

    var result =
        await passwordVerifyEmailUsecase.call(event.passwordVerifyEmailParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successForgotPasswordVerifyCode(
        tokenResponse: result.data,
      );
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapResetPasswordToState(
      ResetPassword event) async* {
    yield UserManagementState.loading();

    var resetPasswordUsecase =
        ResetPasswordUsecase(getIt<IUserManagementRepository>());

    var result = await resetPasswordUsecase.call(event.resetPasswordParam!);

    if (result.hasDataOnly) {
      yield UserManagementState.successResetPassword(
        tokenResponse: result.data,
      );
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }

  Stream<UserManagementState> _mapLoginSocialToState(
      LoginViaSocialMedia event) async* {
    var loginUseCase = event.socialLoginParam!.loginType == LoginType.facebook
        ? LoginFBUseCase(getIt<IUserManagementRepository>())
        : LoginGoogleUseCase(getIt<IUserManagementRepository>());

    final result = await loginUseCase.call(
      event.socialLoginParam!,
    );
    if (result.hasDataOnly) {
      yield UserManagementState.loaded(loginEntity: result.data);
    } else {
      yield UserManagementState.error(
        error: result.error,
        callback: () => this.add(event),
        isSocial: false,
      );
    }
  }
}

class ProfileCubit extends Cubit<GetProfileState> {
  ProfileCubit() : super(GetProfileState.profileInitial());

  void getProfile() async {
    emit(GetProfileState.profileLoading());

    final result = await LoadProfileUseCase(getIt<IUserManagementRepository>())(
      NoParams(),
    );

    if (result.hasDataOnly) {
      Provider.of<Profile>(getIt<NavigationService>().appContext!,
              listen: false)
          .profileEntity = result.data;
      emit(
        GetProfileState.profileLoaded(
          profileEntity: result.data,
        ),
      );
    } else {
      emit(
        GetProfileState.profileError(
          error: result.error,
          callback: () => this.getProfile(),
        ),
      );
    }
  }
}
