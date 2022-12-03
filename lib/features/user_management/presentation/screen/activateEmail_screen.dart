import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:buy_luck/core/localization/restart_widget.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/features/user_management/data/params/forgot_password_param.dart';
import 'package:buy_luck/features/user_management/data/params/password_verify_email_param.dart';
import 'package:buy_luck/features/user_management/data/params/verify_email_param.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_bloc.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_event.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_state.dart';
import 'package:buy_luck/features/user_management/presentation/param/reset_password_screen_param.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/common/methods/resend_code_time.dart';
import '../param/activate_email_param.dart';
import 'reset_password_screen.dart';

class ActivateEmail extends StatefulWidget {
  static const routeName = "ActivateEmail/";
  final ActivateEmailParam param;

  const ActivateEmail({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  _ActivateEmailState createState() => _ActivateEmailState();
}

class _ActivateEmailState extends State<ActivateEmail> {
  final int codeLength = 6;
  bool showError = false;
  final textStyleError = TextStyle(fontSize: 32.sp, color: Colors.red);
  bool _inAsyncCall = false;

  late UserManagementBloc _bloc;
  bool firstSend = false;

  /// resend code hits
  DateTime resendCode = DateTime.now();
  int codeHits = 1;

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  PinTheme get _pinPutDecoration {
    return PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  @override
  void initState() {
    //print(widget.param.fromRegister);
    super.initState();
    _bloc = UserManagementBloc();
    if (widget.param.fromScreen == FromScreen.Login) {
      _bloc.add(UserManagementEvent.resendEmailVerify());
      firstSend = true;
    }
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _inAsyncCall,
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
                          widget.param.fromScreen == FromScreen.ForgotPassword
                              ? "إعادة تعيين كلمة المرور"
                              : Translation.of(context).emailActivation,
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
                          widget.param.fromScreen == FromScreen.ForgotPassword
                              ? "قم بإدخال الرمز المرسل الى بريدك الإلكتروني"
                              : Translation.of(context)
                                  .enterTheCodeSentToYourEmailToActivateTheAccount,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: ScreenUtil().setSp(40),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Stack(
                        children: [
                          // Container(
                          //   height: 50,
                          //   width: 300,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15),
                          //     border: Border.all(color: Colors.grey, width: 2),
                          //   ),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     children: [
                          //       SizedBox(
                          //         height: ScreenUtil().setHeight(100),
                          //         child: VerticalDivider(
                          //           color: Colors.grey,
                          //           thickness: 2,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: ScreenUtil().setHeight(100),
                          //         child: VerticalDivider(
                          //           color: Colors.grey,
                          //           thickness: 2,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: ScreenUtil().setHeight(100),
                          //         child: VerticalDivider(
                          //           color: Colors.grey,
                          //           thickness: 2,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: ScreenUtil().setHeight(100),
                          //         child: VerticalDivider(
                          //           color: Colors.grey,
                          //           thickness: 2,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         height: ScreenUtil().setHeight(100),
                          //         child: VerticalDivider(
                          //           color: Colors.grey,
                          //           thickness: 2,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Positioned(
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Pinput(
                                length: this.codeLength,
                                focusNode: _pinPutFocusNode,
                                controller: _pinPutController,
                                submittedPinTheme: _pinPutDecoration
                                  ..decoration?.copyWith(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                focusedPinTheme: _pinPutDecoration,
                                followingPinTheme: _pinPutDecoration
                                  ..decoration?.copyWith(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(.5),
                                    ),
                                  ),
                              ),
                            ),
                          ),
                          if (showError)
                            Positioned(
                              child: Text(
                                "يجب ملئيع الخانات",
                                style: textStyleError,
                                textAlign: TextAlign.right,
                              ),
                              right: 10,
                              bottom: 0,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocListener<UserManagementBloc, UserManagementState>(
                  bloc: _bloc,
                  listener: (context, state) {
                    state.map(
                      initial: (_) {},
                      loading: (_) => _handleLoading(),

                      /// Restart the application after login because the
                      /// homeInit request is on the splash screen
                      /// Another solution to take consider of:
                      /// (Navigating to the splash screen from here ..)
                      loaded: (s) {},
                      error: (s) => _handleError(s),
                      successChangePassword: (_) {},
                      successLoginWithGoogle: (_) {},
                      successLoginWithFacebook: (_) {},
                      successVerifyEmail: (s) => _handleSuccessVerifyEmail(s),
                      successResendEmailVerify: (s) =>
                          _handleSuccessResendEmailVerify(s),
                      successForgotPassword: (_) =>
                          _handleSuccessForgotPassword(),
                      successForgotPasswordVerifyCode: (s) =>
                          _handleSuccessForgotPasswordVerifyCode(s),
                      successResetPassword: (_) {},
                    );
                  },
                  child: _buildSubmitButton(),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Translation.of(context).reSend,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _onResendCodePressed,
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
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 15),
      onPressed: _onSubmitButtonPressed,
      color: Theme.of(context).primaryColor,
      child: Text(
        Translation.of(context).confirm,
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

  /// logic
  void _onSubmitButtonPressed() {
    if (this._pinPutController.text.length < codeLength) {
      /// show error
      setState(() => showError = true);
    } else {
      setState(() => showError = false);
      if (widget.param.fromScreen == FromScreen.ForgotPassword) {
        _bloc.add(
          UserManagementEvent.forgotPasswordVerifyCode(
            passwordVerifyEmailParam: PasswordVerifyEmailParam(
              this._pinPutController.text,
              widget.param.email!,
            ),
          ),
        );
      } else {
        _bloc.add(
          UserManagementEvent.verifyEmail(
            verifyEmailParam: VerifyEmailParam(this._pinPutController.text),
          ),
        );
      }
      // _bloc.add(
      //   UserManagementEvent.verifyEmail(
      //     verifyEmailParam: VerifyEmailParam(this._pinPutController.text),
      //   ),
      // );
    }
  }

  void _onResendCodePressed() {
    final now = DateTime.now();
    if (!validateToResendCode(codeHits, resendCode)) {
      if (now.difference(resendCode).inSeconds > 60) {
        Fluttertoast.showToast(
          msg:
              "الرجاء الانتظار${Duration(seconds: resendCodeTime(codeHits) - now.difference(resendCode).inSeconds).inMinutes} دقيقة وإعادة المحاولة",
        );
      } else {
        Fluttertoast.showToast(
          msg:
              "الرجاء الانتظار${resendCodeTime(codeHits) - now.difference(resendCode).inSeconds} ثانية وإعادة المحاولة",
        );
      }
      return;
    }

    resendCode = DateTime.now();
    _bloc.add(
      UserManagementEvent.resendEmailVerify(),
    );
    //print("resend pressed");
    if (widget.param.fromScreen == FromScreen.ForgotPassword) {
      _bloc.add(
        UserManagementEvent.forgotPassword(
          forgotPasswordParam: ForgotPasswordParam(widget.param.email!),
        ),
      );
    } else {
      _bloc.add(
        UserManagementEvent.resendEmailVerify(),
      );
    }
  }

  void _handleError(Error state) {
    setState(() {
      _inAsyncCall = false;
      firstSend = false;
    });
    ErrorViewer.showError(
      context: context,
      error: state.error!,
      callback: state.callback!,
      errorViewerOptions: ErrVSnackBarOptions(),
    );
  }

  void _handleLoading() {
    setState(() => _inAsyncCall = true);
  }

  void _handleSuccessVerifyEmail(SuccessVerifyEmail s) {
    setState(() => _inAsyncCall = false);
    Fluttertoast.showToast(
      msg: s.verifyEmailEntity?.message ?? "",
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
    );
    if ((s.verifyEmailEntity?.message ?? "").contains("تم"))
      RestartWidget.restartApp(context);
  }

  void _handleSuccessResendEmailVerify(SuccessResendEmailVerify state) {
    if (firstSend)
      Fluttertoast.showToast(
        msg: "تم إرسال الكود الى بريدك الإلكتروني",
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );
    else
      Fluttertoast.showToast(
        msg: state.resendEmailVerifyEntity?.message ?? "",
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );

    setState(() {
      _inAsyncCall = false;
      firstSend = false;
    });
  }

  void _handleSuccessForgotPasswordVerifyCode(
      SuccessForgotPasswordVerifyCode state) {
    setState(() => _inAsyncCall = false);
    if (state.tokenResponse?.token.isNotEmpty ?? false) {
      Navigator.pushNamed(
        context,
        ResetPasswordScreen.routeName,
        arguments: ResetPasswordScreenParam(widget.param.email!),
      );
    } else {
      Fluttertoast.showToast(
        msg: (state.tokenResponse?.message?.isEmpty ?? true)
            ? "حدث خطأ غير معروف"
            : state.tokenResponse!.message!,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
      );
    }
  }

  void _handleSuccessForgotPassword() {
    setState(() => _inAsyncCall = false);
    Fluttertoast.showToast(
      msg: "تم إرسال الكود الى بريدك الإلكتروني",
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
    );
  }
}
