import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/bloc.dart';
import 'package:buy_luck/features/user_management/presentation/param/activate_email_param.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_submit_button.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_text_field.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'activateEmail_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = "ForgotPasswordScreen/";
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  /// variables
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final GlobalKey<FormFieldState> _emailKey = GlobalKey<FormFieldState>();
  final _formKey = GlobalKey<FormState>();
  bool inAsyncCall = false;

  final _userManagmentBloc = UserManagementBloc();

  @override
  void initState() {
    super.initState();
    _emailFocusNode.requestFocus();
  }

  /// state
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserManagementBloc, UserManagementState>(
      bloc: _userManagmentBloc,
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
          successForgotPassword: (_) => _handleSuccessForgotPassword(),
          successForgotPasswordVerifyCode: (_) {},
          successResetPassword: (_) {},
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

                  /// email text field
                  CustomTextField(
                    controller: _emailController,
                    focusNode: _emailFocusNode,
                    textKey: _emailKey,
                    icon: Icons.person_rounded,
                    hintText: Translation.of(context).email,
                    validator: (email) {
                      if (Validators.isValidEmail(email ?? '')) return null;
                      return Translation.of(context).invalidEmail;
                    },
                    onChanged: (_) {
                      _emailKey.currentState?.validate();
                    },
                    textInputType: TextInputType.emailAddress,
                  ),

                  /// space
                  SizedBox(height: 0.05.sh),

                  /// submit button
                  CustomSubmitButton(
                    onPressed: _onSubmitPressed,
                    title: "التالي",
                  ),
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
    _emailController.dispose();
    _emailFocusNode.dispose();
    _userManagmentBloc.close();
    super.dispose();
  }

  /// widgets

  /// logic
  void _onSubmitPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      _userManagmentBloc.add(
        UserManagementEvent.forgotPassword(
          forgotPasswordParam: ForgotPasswordParam(
            _emailController.text,
          ),
        ),
      );
    }
  }

  void _handleSuccessForgotPassword() {
    setState(() => inAsyncCall = false);
    Fluttertoast.showToast(
      msg: "تم إرسال الكود الى بريدك الإلكتروني",
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
    );
    FocusScope.of(context).unfocus();

    Navigator.pushNamed(
      context,
      ActivateEmail.routeName,
      arguments: ActivateEmailParam(
        FromScreen.ForgotPassword,
        email: _emailController.text,
      ),
    );
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
