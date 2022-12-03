import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:buy_luck/core/Common/validators.dart';
import 'package:buy_luck/core/localization/restart_widget.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/core/ui/syrian_phone_formatter.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_bloc.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_state.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/ui/error_ui/errors_screens/error_widget.dart';

class ReturnPassword extends StatefulWidget {
  static const routeName = "ReturnPassword/";
  @override
  _ReturnPasswordState createState() => _ReturnPasswordState();
}

class _ReturnPasswordState extends State<ReturnPassword> {
  /// Text fields focus nodes
  FocusNode _emailFocusNode = FocusNode();

  /// Text fields keys
  final _emailKey = new GlobalKey<FormFieldState<String>>();

  /// Text fields controllers
  final _emailController = TextEditingController();

  /// Cancel tokens
  CancelToken _loginCancelToken = CancelToken();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
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
                        Translation.of(context).passwordRecovery,
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
                        Translation.of(context)
                            .enterYourEmailToRetrieveThePassword,
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
                        icon: Icons.email,
                        hintText: Translation.of(context).email,
                        focusNode: _emailFocusNode,
                        textKey: _emailKey,
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        onSubmitted: (value) {}, //////////////////////
                        validator: (value) {
                          if (Validators.isValidPhoneNumber(value ?? ''))
                            return null;
                          else
                            return Translation.of(context).invalidPhoneNumber;
                        },
                        formatter: [
                          // PhoneNumberTextInputFormatter(),
                          ArabicToEnglishTextInputFormatter(),
                        ],
                        onChanged: (value) {}, /////////////////////////
                        // maxLength: 12,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
              ),
              BlocListener<UserManagementBloc, UserManagementState>(
                listener: (context, state) {
                  state.map(
                    initial: (_) {},
                    loading: (_) {},

                    /// Restart the application after login because the
                    /// homeInit request is on the splash screen
                    /// Another solution to take consider of:
                    /// (Navigating to the splash screen from here ..)
                    loaded: (s) => RestartWidget.restartApp(context),
                    error: (e) {
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
                child: BlocBuilder<UserManagementBloc, UserManagementState>(
                  buildWhen: (previous, current) {
                    if (previous != current)
                      return true;
                    else {
                      return false;
                    }
                  },
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => _buildSubmitButton(),
                      loading: (_) => buildLoading(),
                      loaded: (s) => _buildSubmitButton(),
                      error: (_) => _buildSubmitButton(),
                      successChangePassword: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successLoginWithGoogle: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successLoginWithFacebook: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successResendEmailVerify: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successVerifyEmail: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successForgotPassword: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successForgotPasswordVerifyCode: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successResetPassword: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                    );
                  },
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(100),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: Translation.of(context).cancel,
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildSubmitButton() {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {},
      color: Theme.of(context).primaryColor,
      child: Text(
        Translation.of(context).passwordRecovery,
        style: TextStyle(color: Colors.white),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          CommonSizes.BORDER_RADIUS_STANDARD,
        ),
        // side: BorderSide(color: Colors.red)
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
