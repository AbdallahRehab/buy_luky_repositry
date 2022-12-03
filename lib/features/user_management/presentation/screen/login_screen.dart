import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/localization/restart_widget.dart';
import 'package:buy_luck/core/ui/syrian_phone_formatter.dart';
import 'package:buy_luck/features/user_management/data/params/login_params.dart';
import 'package:buy_luck/features/user_management/data/params/social_login_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_bloc.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_event.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_state.dart';
import 'package:buy_luck/features/user_management/presentation/screen/register_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/Common/app_config.dart';
import '../../../../core/constants/app/app_constants.dart';
import '../param/activate_email_param.dart';
import 'activateEmail_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "LoginScreen/";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  IconData passwordIcon = Icons.visibility_off;
  bool isHiddenPassword = true;

  /// Text fields focus nodes
  FocusNode _phoneFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  /// Text fields keys
  final _phoneKey = new GlobalKey<FormFieldState<String>>();
  final _passwordKey = new GlobalKey<FormFieldState<String>>();

  /// Text fields controllers
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  /// Cancel tokens
  CancelToken _loginCancelToken = CancelToken();

  /// Screen vars
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 55, horizontal: 20),
            child: Column(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          Translation.of(context).login,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(75),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          Translation.of(context).enterYourAccountDataToLogin,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(40),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(35),
                        ),
                        child: _buildTextField(
                          icon: Icons.phone_android_outlined,
                          hintText: Translation.of(context).phoneNumber,
                          focusNode: _phoneFocusNode,
                          textKey: _phoneKey,
                          textInputAction: TextInputAction.next,
                          controller: _phoneController,
                          onSubmitted: (value) {
                            _passwordFocusNode.requestFocus();
                          },
                          validator: (value) {
                            if (Validators.isValidPhoneNumber(value ?? ''))
                              return null;
                            else
                              return Translation.of(context).invalidPhoneNumber;

                          },
                          formatter: [
                            ArabicToEnglishTextInputFormatter(),
                          ],
                          onChanged: (value) {
                            _phoneKey.currentState?.validate();
                          },
                          textInputType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(35),
                        ),
                        child: _buildTextField(
                          focusNode: _passwordFocusNode,
                          hintText: Translation.of(context).password,
                          icon: Icons.lock,
                          iconSize: 30,
                          obscureText: isHiddenPassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              isHiddenPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            splashColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                isHiddenPassword = !isHiddenPassword;
                              });
                            },
                          ),
                          textKey: _passwordKey,
                          controller: _passwordController,
                          validator: (value) {
                            if (Validators.isValidPassword(value ?? ''))
                              return null;
                            else
                              return Translation.of(context).invalidPassword;
                          },
                          onChanged: (value) {
                            _passwordKey.currentState?.validate();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: GestureDetector(
                      onTap: _onForgetPasswordTap,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Translation.of(context).forgetPassword,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocListener<UserManagementBloc, UserManagementState>(
                  listener: (context, state) {
                    state.map(
                      initial: (_) {
                        setState(() {
                          _isLoading = false;
                        });
                      },
                      loading: (_) {
                        setState(() {
                          _isLoading = true;
                        });
                      },

                      /// Restart the application after login because the
                      /// homeInit request is on the splash screen
                      /// Another solution to take consider of:
                      /// (Navigating to the splash screen from here ..)
                      loaded: (s) {
                        setState(() {
                          _isLoading = false;
                        });
                        // if (s.loginEntity?.isVerfiy == 0)
                        //   Navigator.pushNamed(
                        //     context,
                        //     ActivateEmail.routeName,
                        //     arguments: ActivateEmailParam(FromScreen.Login),
                        //   );
                        // else
                          return RestartWidget.restartApp(context);
                      },
                      error: (e) {
                        setState(() {
                          _isLoading = false;
                        });
                        if (e.isSocial) {
                          Fluttertoast.showToast(
                            msg: "فشل تسجيل الدخول، الرجاء المحاولة مرة أخرى",
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg:
                                "فشل تسجيل الدخول، الرجاء التأكد من اسم المستخدم وكلمة المرور",
                          );
                        }
                      },
                      successChangePassword: (_) {},
                      successLoginWithGoogle: (_) {},
                      successLoginWithFacebook: (_) {},
                      successResendEmailVerify: (_) {},
                      successVerifyEmail: (_) {},
                      successForgotPassword: (_) {},
                      successForgotPasswordVerifyCode: (_) {},
                      successResetPassword: (_) {},
                    );
                  },
                  child: _buildSubmitButton(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Translation.of(context).or,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildIconWithTextButton(
                  Colors.lightBlueAccent.withAlpha(20),
                  Translation.of(context).continueWithFacebook,
                  FACEBOOK_ICON_SVG,
                  _handleFacebookButtonPressed,
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildIconWithTextButton(
                  Colors.deepOrangeAccent.withAlpha(20),
                  Translation.of(context).continueWithGoogle,
                  GOOGLE_ICON_SVG,
                  _handleGoogleButtonPressed,
                ),
                const SizedBox(
                  height: 25,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Translation.of(context).doNotHaveAnAccount,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: Intl.getCurrentLocale()
                                    .contains(AppConstants.LANG_EN)
                                ? GoogleFonts.poppins().fontFamily
                                : GoogleFonts.cairo().fontFamily),
                      ),
                      TextSpan(
                        text: Translation.of(context).registerNow,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: Intl.getCurrentLocale()
                                  .contains(AppConstants.LANG_EN)
                              ? GoogleFonts.poppins().fontFamily
                              : GoogleFonts.cairo().fontFamily,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                                context, RegisterScreen.routeName);
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildIconWithTextButton(
    Color color,
    String txt,
    String iconPath,
    Function() function,
  ) {
    return SizedBox.shrink();
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            CommonSizes.BORDER_RADIUS_STANDARD,
          ),
          // side: BorderSide(color: Colors.red)
        ),
      ),
      onPressed: function,
      child: Flexible(
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 20,
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Text(
                txt,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildSubmitButton() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          if (_phoneKey.currentState?.validate() ?? false) {
            if (_passwordKey.currentState?.validate() ?? false) {
              BlocProvider.of<UserManagementBloc>(context).add(
                UserManagementEvent.login(
                  loginBody: LoginParams(
                    phone: _phoneController.text.replaceAll("-", ""),
                    password: _passwordController.text,
                    cancelToken: _loginCancelToken,
                      fcm: await AppConfig().fcmToken == null ? '' : await AppConfig().fcmToken!,
                  ),
                ),
              );
            }
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          primary: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              CommonSizes.BORDER_RADIUS_STANDARD,
            ),
            // side: BorderSide(color: Colors.red)
          ),
        ),
        child: Text(
          Translation.of(context).login,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildTextField({
    IconData? icon,
    double? iconSize,
    Widget? suffixIcon,
    bool? obscureText,
    String? hintText,
    double? height,
    required FocusNode focusNode,
    required Key textKey,
    required TextEditingController controller,
    TextInputAction? textInputAction,
    Function(String value)? onSubmitted,
    Function(String value)? onChanged,
    String? Function(String? value)? validator,
    List<TextInputFormatter>? formatter,
    int? maxLength,
    TextInputType? textInputType,
  }) {
    return TextFormField(
      key: textKey,
      obscureText: obscureText ?? false,
      onTap: () {
        setState(() {});
      },
      onFieldSubmitted: (value) {
        setState(() {});
        onSubmitted?.call(value);
      },
      onChanged: (value) {
        onChanged?.call(value);
      },
      validator: validator,
      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        hintText: hintText,
        border: _getOutlineBorder(),
        disabledBorder: _getOutlineBorder(),
        enabledBorder: _getOutlineBorder(),
        focusedBorder: _getOutlineBorder(),
        errorBorder: _getOutlineBorder(color: Colors.redAccent),
        focusedErrorBorder: _getOutlineBorder(color: Colors.red),
        errorStyle: TextStyle(
          fontSize: ScreenUtil().setSp(25),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(icon),
            SizedBox(
              height: ScreenUtil().setHeight(80),
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
          ],
        ),
        counter: Text(''),
      ),
      focusNode: focusNode,
      textInputAction: textInputAction,
      controller: controller,
      inputFormatters: formatter ?? [],
      maxLength: maxLength,
      keyboardType: textInputType ?? TextInputType.text,
    );
  }

  OutlineInputBorder _getOutlineBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.all(Radius.circular(15)));
  }

  Future<Map<String, String>?> getGoogleTokens() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount? user = await googleSignIn.signIn();

      if (user != null) {
        GoogleSignInAuthentication googleAuth = await user.authentication;
        return {
          'accessToken': googleAuth.accessToken!,
          'idToken': googleAuth.idToken!,
        };
      }
    } catch (err) {
      print(err);
      return null;
    }
    return null;
  }

  void _handleGoogleButtonPressed() async {
    final tokens = await getGoogleTokens();
    print("Token $tokens");
    if (tokens != null && tokens.containsKey("accessToken")) {
      /// emit event to log in using google
      BlocProvider.of<UserManagementBloc>(context).add(
        UserManagementEvent.loginViaSocialMedia(
          socialLoginParam: SocialLoginParam(
            loginType: LoginType.google,
            token: tokens["accessToken"]!,
          ),
        ),
      );
    }
  }

  Future<String> getFacebookAccessToken() async {
    var facebookAuth = FacebookAuth.instance;
    var facebookLoginResult = await facebookAuth.login();
    final accessToken = facebookLoginResult.accessToken;
    return accessToken!.token;
  }

  void _handleFacebookButtonPressed() async {
    var accessToken = await getFacebookAccessToken();
    print(accessToken);
    BlocProvider.of<UserManagementBloc>(context).add(
      UserManagementEvent.loginViaSocialMedia(
        socialLoginParam: SocialLoginParam(
          loginType: LoginType.facebook,
          token: accessToken,
        ),
      ),
    );
  }

  void _onForgetPasswordTap() {
    Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
  }
}
