import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/toast.dart' as t;
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_submit_button.dart';
import 'package:buy_luck/features/user_management/presentation/widget/custom_text_field.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ChangeEmailScreen extends StatefulWidget {
  static const String routeName = "ChangeEmailScreen/";

  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  _ChangeEmailScreenState createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  /// controllers
  final emailController = TextEditingController();

  /// focus nodes
  final emailFocusNode = FocusNode();

  /// key
  final formKey = GlobalKey<FormState>();
  final emailKey = GlobalKey<FormFieldState>();

  final bloc = ProfileBloc();
  bool inAsyncCall = false;

  /// state
  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      bloc: bloc,
      listener: (_, state) {
        state.map(
          initialProfile: (_) => handleLoading(),
          loadingProfile: (_) => handleLoading(),
          successUpdateProfile: (_) => handleSuccess(),
          successGetNotifications: (_) {},
          errorProfile: (s) => handleError(s),
        );
      },
      child: ModalProgressHUD(
        inAsyncCall: inAsyncCall,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "تغيير البريد الإلكتروني",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
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
            padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.1.sh),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  /// email textfield
                  CustomTextField(
                    textKey: emailKey,
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    focusNode: emailFocusNode,
                    icon: Icons.email,
                    hintText: "البريد الإلكتروني الجديد",
                    textInputType: TextInputType.emailAddress,
                    onChanged: (_) {
                      emailKey.currentState!.validate();
                    },
                    validator: (email) {
                      if (Validators.isValidEmail(email ?? '')) return null;
                      return Translation.of(context).invalidEmail;
                    },
                  ),

                  SizedBox(height: 50.h),

                  /// submit button
                  CustomSubmitButton(
                      onPressed: _onSubmitPressed, title: "تحديث"),
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
    bloc.close();
    emailController.dispose();
    emailFocusNode.dispose();
    super.dispose();
  }

  /// widget

  /// logic
  void _onSubmitPressed() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      bloc.add(
        ProfileEvent.updateProfile(
          updateProfileParameter: UpdateProfileParameter(
            // email: emailController.text,
          ),
        ),
      );
    }
  }

  void handleLoading() {
    setState(() {
      inAsyncCall = true;
    });
  }

  void handleSuccess() {
    setState(() => inAsyncCall = false);
    t.Toast.show(
      "تم التحديث بنجاح...يجب إعادة تسجيل الدخول",
    );
    logout(context);
  }

  void handleError(ErrorProfile state) {
    setState(() => inAsyncCall = false);
    ErrorViewer.showError(
        context: context, error: state.error!, callback: state.callback);
  }
}
