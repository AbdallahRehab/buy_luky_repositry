import 'package:buy_luck/core/Common/validators.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_button.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_textfield.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/user_management/data/params/change_password_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/bloc.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/ui/error_ui/errors_screens/error_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const String routeName = "ChangePasswordScreen/";
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  /// form key
  final formKey = GlobalKey<FormState>();

  ///controllers
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  /// focus nodes
  final oldPasswordFocusNode = FocusNode();
  final newPasswordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();

  /// textfield states
  final oldPasswordTextKey = GlobalKey<FormFieldState>();
  final newPasswordTextKey = GlobalKey<FormFieldState>();
  final confirmPasswordTextKey = GlobalKey<FormFieldState>();

  /// hide passwords state
  bool isHideOldPassword = true;
  bool isHideNewPassword = true;
  bool isHideConfirmPassword = true;

  /// cancel tokens
  final _changePasswordCancelToken = CancelToken();

  final _userManagmentBloc = UserManagementBloc();
  final TextStyle hintStyle = TextStyle(fontSize: 42.sp, color: Colors.white);
  final double iconSize = 50.sp;

  /// state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تغيير كلمة السر",  style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
        reverse: true,
        child: Container(
          width: 1.0.sw,
          height: 0.8.sh,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOldPasswordTextField(),
                SizedBox(height: 40.h),
                _buildNewPasswordTextField(),
                SizedBox(height: 40.h),
                _buildConfirmPasswordTextField(),
                SizedBox(height: 100.h),
                BlocBuilder<UserManagementBloc, UserManagementState>(
                  bloc: _userManagmentBloc,
                  builder: (_, state) {
                    return state.map(
                      initial: (_) => _buildSubmitButton(),
                      loading: (_) => _buildWaiting(),
                      loaded: (_) => ScreenNotImplementedError(callback: () {}),
                      successChangePassword: (_) {
                        Fluttertoast.showToast(
                          msg: "تم تغيير كلمة المرور بنجاح",
                          gravity: ToastGravity.BOTTOM,
                          textColor: Colors.white,
                        );
                        Navigator.pop(context);
                        return _buildSubmitButton();
                      },
                      error: (s) {
                        ErrorViewer.showError(
                          context: context,
                          error: s.error!,
                          callback: s.callback!,
                        );
                        print('EEEE ${s.error}');
                        return _buildSubmitButton();
                      },
                      successLoginWithGoogle: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successLoginWithFacebook: (_) =>
                          ScreenNotImplementedError(callback: () {}),
                      successResendEmailVerify: (s) =>
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userManagmentBloc.close();
    super.dispose();
  }

  /// widget
  Widget _buildOldPasswordTextField() {
    return BuyLuckTextField(
      hintText: "كلمة السر السابقة",
      hintStyle: hintStyle,
      style: hintStyle,
      controller: oldPasswordController,
      textKey: oldPasswordTextKey,
      focusNode: oldPasswordFocusNode,
      obscureText: isHideOldPassword,
      fillColor: Colors.orange.shade800.withOpacity(.5),
      radius: 50.r,
      textAlign: TextAlign.center,
      suffixIcon: _buildSuffixIcon(
        icon: Icon(
          isHideOldPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: () {
          setState(() {
            isHideOldPassword = !isHideOldPassword;
          });
        },
      ),
      validator: validator,
      onChanged: (value) {
        oldPasswordTextKey.currentState?.validate();
      },
      onSubmitted: (_) {
        newPasswordFocusNode.requestFocus();
      },
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _buildNewPasswordTextField() {
    return BuyLuckTextField(
      hintText: "كلمة السر الجديدة",
      hintStyle: hintStyle,
      style: hintStyle,
      controller: newPasswordController,
      textKey: newPasswordTextKey,
      focusNode: newPasswordFocusNode,
      obscureText: isHideNewPassword,
      fillColor: Colors.orange.shade800.withOpacity(.5),
      radius: 50.r,
      textAlign: TextAlign.center,
      suffixIcon: _buildSuffixIcon(
        icon: Icon(
          isHideNewPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: () {
          setState(() {
            isHideNewPassword = !isHideNewPassword;
          });
        },
      ),
      validator: (value) => validator(value),
      onChanged: (value) {
        newPasswordTextKey.currentState?.validate();
      },
      onSubmitted: (_) {
        confirmPasswordFocusNode.requestFocus();
      },
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return BuyLuckTextField(
      hintText: "تأكيد كلمة السر الجديدة",
      hintStyle: hintStyle,
      style: hintStyle,
      controller: confirmPasswordController,
      textKey: confirmPasswordTextKey,
      focusNode: confirmPasswordFocusNode,
      obscureText: isHideConfirmPassword,
      fillColor: Colors.orange.shade800.withOpacity(.5),
      radius: 50.r,
      textAlign: TextAlign.center,
      suffixIcon: _buildSuffixIcon(
        icon: Icon(
          isHideConfirmPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: () {
          setState(() {
            isHideConfirmPassword = !isHideConfirmPassword;
          });
        },
      ),
      validator: (value) {
        if (value != newPasswordController.text) {
          return 'تأكيد كلمة المرور غير صحيح';
        }
        return null;
      },
      onChanged: (value) {
        confirmPasswordTextKey.currentState?.validate();
      },
      onSubmitted: (_) {
        onSubmitClick();
      },
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }

  Widget _buildSubmitButton() {
    return BuyLuckButton(
      text: "تحديث",fontSize:  60.sp,
      onPressed: onSubmitClick,
    );
  }

  Widget _buildSuffixIcon({
    required Widget icon,
    required Function() onPressed,
  }) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      iconSize: iconSize,
      splashColor: Colors.transparent,
      color: Colors.white,
    );
  }

  Widget _buildWaiting() {
    return WaitingWidget();
  }

  /// logic
  String? validator(String? value) {
    if (Validators.isValidPassword(value ?? ''))
      return null;
    else
      return Translation.of(context).invalidPassword;
  }

  void onSubmitClick() {
    if (formKey.currentState?.validate() ?? false) {
      _userManagmentBloc.add(
        UserManagementEvent.changePassword(
          changePasswordParam: ChangePasswordParam(
            oldPassword: oldPasswordController.text,
            newPassword: newPasswordController.text,
            cancelToken: _changePasswordCancelToken,
          ),
        ),
      );
    }
  }
}
