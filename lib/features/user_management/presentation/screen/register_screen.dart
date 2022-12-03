import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/core/ui/syrian_phone_formatter.dart';
import 'package:buy_luck/features/user_management/data/params/register_body_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/bloc.dart';
import 'package:buy_luck/features/user_management/presentation/screen/login_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:buy_luck/core/localization/restart_widget.dart';
import '../../../../core/Common/app_config.dart';
import '../param/activate_email_param.dart';
import 'activateEmail_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = "RegisterScreen/";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  IconData passwordIcon = Icons.visibility_off;
  bool isHiddenPassword = true;
  bool isHiddenConfirmPassword = true;

  /// Text fields focus nodes
  FocusNode _userFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _confirmPassFocusNode = FocusNode();
  FocusNode _phoneFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();

  /// Text fields keys
  final _userKey = new GlobalKey<FormFieldState<String>>();
  final _passwordKey = new GlobalKey<FormFieldState<String>>();
  final _confirmPassKey = new GlobalKey<FormFieldState<String>>();
  final _phoneKey = new GlobalKey<FormFieldState<String>>();
  final _emailKey = new GlobalKey<FormFieldState<String>>();

  /// Text fields controllers
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  /// Cancel tokens
  CancelToken _loginCancelToken = CancelToken();

  /// Screen vars
  bool _isLoading = false;

  final _bloc = UserManagementBloc();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: SingleChildScrollView(
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
                          Translation.of(context).register,
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
                          Translation.of(context).createWithEasyAndSimpleSteps,
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
                          icon: Icons.person_rounded,
                          hintText: Translation.of(context).userName,
                          focusNode: _userFocusNode,
                          textKey: _userKey,
                          textInputAction: TextInputAction.next,
                          controller: _userController,
                          onSubmitted: (value) {
                            _emailFocusNode.requestFocus();
                          },
                          validator: (value) {
                            if (Validators.isValidName(value ?? ''))
                              return null;
                            else
                              return Translation.of(context).invalidUsername;
                          },
                          formatter: [
                            // PhoneNumberTextInputFormatter(),
                            ArabicToEnglishTextInputFormatter(),
                          ],
                          onChanged: (value) {
                            _userKey.currentState?.validate();
                          },
                          // maxLength: 12,
                          textInputType: TextInputType.text,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(35),
                        ),
                        child: _buildTextField(
                          icon: Icons.email,
                          hintText: Translation.of(context).email,
                          focusNode: _emailFocusNode,
                          textKey: _emailKey,
                          textInputAction: TextInputAction.next,
                          controller: _emailController,
                          onSubmitted: (value) {
                            _phoneFocusNode.requestFocus();
                          },
                          validator: (value) {
                            if (Validators.isValidEmail(value ?? ''))
                              return null;
                            else
                              return Translation.of(context).invalidEmail;
                          },
                          formatter: [
                            // PhoneNumberTextInputFormatter(),
                            ArabicToEnglishTextInputFormatter(),
                          ],
                          onChanged: (value) {
                            _emailKey.currentState?.validate();
                          },
                          // maxLength: 12,
                          textInputType: TextInputType.emailAddress,
                        ),
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
                          onChanged: (value) {
                            _userKey.currentState?.validate();
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(35),
                        ),
                        child: _buildTextField(
                          focusNode: _confirmPassFocusNode,
                          hintText: Translation.of(context).confirmPassword,
                          icon: Icons.lock,
                          iconSize: 30,
                          obscureText: isHiddenConfirmPassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              isHiddenConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            splashColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                isHiddenConfirmPassword =
                                    !isHiddenConfirmPassword;
                              });
                            },
                          ),
                          textKey: _confirmPassKey,
                          controller: _confirmPassController,
                          validator: (value) {
                            if (Validators.isValidConfirmPassword(
                              _passwordController.text,
                              value ?? '',
                            ))
                              return null;
                            else
                              return Translation.of(context).invalidConfirmPass;
                          },
                          onChanged: (value) {
                            _confirmPassKey.currentState?.validate();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                BlocListener<UserManagementBloc, UserManagementState>(
                  bloc: _bloc,
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
                        // Navigator.pushNamed(
                        //   context,
                        //   ActivateEmail.routeName,
                        //   arguments: ActivateEmailParam(FromScreen.Register),
                        // );
                        // Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                        return RestartWidget.restartApp(context);
                      },
                      error: (e) {
                        setState(() {
                          _isLoading = false;
                        });
                        ErrorViewer.showError(
                          context: context,
                          error: e.error!,
                          callback: e.callback!,
                          errorViewerOptions: ErrVSnackBarOptions(),
                        );
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
                SizedBox(
                  height: ScreenUtil().setHeight(200),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Translation.of(context).alreadyHaveAnAccount,
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: Translation.of(context).login,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
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

  _buildSubmitButton() {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: () async {
          if (_userKey.currentState?.validate() ?? false) {
            if (_emailKey.currentState?.validate() ?? false) {
              if (_phoneKey.currentState?.validate() ?? false) {
              if (_passwordKey.currentState?.validate() ?? false) {
                if (_confirmPassKey.currentState?.validate() ?? false) {
                  _bloc.add(
                    UserManagementEvent.resgister(
                      registerBody: RegisterBodyParam(
                          phone: _phoneController.text,
                          password: _passwordController.text,
                          fcm: await AppConfig().fcmToken == null ? '' : await AppConfig().fcmToken!,
                          name: _userController.text,
                          email: _emailController.text,
                          passwordConfirmation: _confirmPassController.text),
                    ),
                  );
                }
              }
              }
            }
          }
        },
        color: Theme.of(context).primaryColor,
        child: Text(
          Translation.of(context).register,
          style: TextStyle(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            CommonSizes.BORDER_RADIUS_STANDARD,
          ),
          // side: BorderSide(color: Colors.red)
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
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
}
