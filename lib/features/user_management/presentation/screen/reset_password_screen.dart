import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/Common/validators.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/features/user_management/data/params/reset_password_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/bloc.dart';
import 'package:buy_luck/features/user_management/presentation/param/reset_password_screen_param.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_submit_button.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_text_field.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/common/text_formatters/arabic_to_english_formatter.dart';

/// password text field
/// confirmation text field
/// email from prev screen
/// submit button

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = "ResetPasswordScreen/";
  final ResetPasswordScreenParam param;

  const ResetPasswordScreen({Key? key, required this.param}) : super(key: key);
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  /// variables
  /// controllers
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  /// focus nodes
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  /// keys
  final GlobalKey<FormFieldState> _passwordKey = GlobalKey();
  final GlobalKey<FormFieldState> _confirmPasswordKey = GlobalKey();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _emailKey = new GlobalKey<FormFieldState<String>>();

  final _emailController = TextEditingController();

  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool inAsyncCall = false;
  final _bloc = UserManagementBloc();

  /// state
  @override
  void initState() {
    super.initState();
    _emailFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserManagementBloc, UserManagementState>(
      bloc: _bloc,
      listener: (context, state) {
        state.map(
          initial: (_) => setState(() => inAsyncCall = true),
          loading: (_) => setState(() => inAsyncCall = true),
          loaded: (_) {},
          successChangePassword: (_) {},
          successLoginWithGoogle: (_) {},
          successLoginWithFacebook: (_) {},
          successVerifyEmail: (_) {},
          successResendEmailVerify: (_) {},
          successForgotPassword: (_) {},
          successForgotPasswordVerifyCode: (_) {},
          successResetPassword: (s) => _handleSuccessResetPassword(s),
          error: (s) => _handleError(s),
        );
      },
      child: ModalProgressHUD(
        inAsyncCall: inAsyncCall,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: BackButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            reverse: true,
            padding:
                EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.05.sh),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// space
                  SizedBox(height: 0.1.sh),

                  /// text fields
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                          icon: Icons.email,
                          hintText: Translation.of(context).email,
                          focusNode: _emailFocusNode,
                          textKey: _emailKey,
                          textInputAction: TextInputAction.next,
                          controller: _emailController,
                          onSubmitted: (value) {
                            _passwordFocusNode.requestFocus();
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
                      _buildPasswordTextField(),
                      _buildConfirmPasswordTextField(),
                    ],
                  ),

                  SizedBox(height: 0.05.sh),

                  CustomSubmitButton(
                    onPressed: _onSubmitPressed,
                    title: "تأكيد",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    _emailController.dispose();
    _emailFocusNode.dispose();
    _bloc.close();
    super.dispose();
  }

  /// widgets
  Widget _buildPasswordTextField() {
    return CustomTextField(
      focusNode: _passwordFocusNode,
      textKey: _passwordKey,
      controller: _passwordController,
      hintText: "كلمة السر الجديدة",
      icon: Icons.lock,
      obscureText: hidePassword,
      textInputAction: TextInputAction.next,
      suffixIcon: IconButton(
        icon: Icon(
          hidePassword ? Icons.visibility : Icons.visibility_off,
        ),
        splashColor: Colors.transparent,
        onPressed: () {
          setState(() {
            hidePassword = !hidePassword;
          });
        },
      ),
      validator: (value) {
        if (Validators.isValidPassword(value ?? ''))
          return null;
        else
          return Translation.of(context).invalidPassword;
      },
      onChanged: (value) {
        _passwordKey.currentState?.validate();
      },
      onSubmitted: (_) {
        _confirmPasswordFocusNode.requestFocus();
      },
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return CustomTextField(
      focusNode: _confirmPasswordFocusNode,
      textKey: _confirmPasswordKey,
      controller: _confirmPasswordController,
      hintText: Translation.of(context).confirmPassword,
      icon: Icons.lock,
      obscureText: hideConfirmPassword,
      suffixIcon: IconButton(
        icon: Icon(
          hideConfirmPassword ? Icons.visibility : Icons.visibility_off,
        ),
        splashColor: Colors.transparent,
        onPressed: () {
          setState(() {
            hideConfirmPassword = !hideConfirmPassword;
          });
        },
      ),
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
        _confirmPasswordKey.currentState?.validate();
      },
      onSubmitted: (_) {
        _onSubmitPressed();
      },
    );
  }

  /// logic
  void _onSubmitPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      _bloc.add(
        UserManagementEvent.resetPassword(
          resetPasswordParam: ResetPasswordParam(
            _passwordController.text,
            _confirmPasswordController.text,
            // widget.param.email,
            _confirmPasswordController.text,
          ),
        ),
      );
    }
  }

  void _handleSuccessResetPassword(SuccessResetPassword state) {
    setState(() => inAsyncCall = false);

    if (state.tokenResponse?.token.isNotEmpty ?? false) {
      Fluttertoast.showToast(
        msg: "تم اعادة تعيين كلمة المرور بنجاح",
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );
      Navigator.popUntil(context, ModalRoute.withName("LoginScreen/"));
    } else {
      Fluttertoast.showToast(
        msg: "حدث خطأ غير معروف",
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );
    }
  }

  void _handleError(Error state) {
    setState(() => inAsyncCall = false);
    ErrorViewer.showError(
      context: context,
      error: state.error!,
      callback: state.callback!,
      errorViewerOptions: ErrVSnackBarOptions(),
    );
  }
}
