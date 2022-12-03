import 'dart:io';

import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_button.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_textfield.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/syrian_phone_formatter.dart';
import 'package:buy_luck/core/ui/toast.dart' as t;
import 'package:buy_luck/features/cart/presentation/screen/wallet_screen.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/presentation/screen/change_password_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/ui/error_ui/error_viewer/toast/errv_toast_options.dart';
import '../widget/profile_image_widget.dart';

class ProfileScreenContent2 extends StatefulWidget {
  final ProfileEntity profileEntity;

  const ProfileScreenContent2({
    Key? key,
    required this.profileEntity,
  }) : super(key: key);

  @override
  _ProfileScreenContent2State createState() => _ProfileScreenContent2State();
}

class _ProfileScreenContent2State extends State<ProfileScreenContent2> {
  /// variables
  late TextEditingController _userNameController;
  final _userNameFocusNode = FocusNode();
  final _userNameFormKey = GlobalKey<FormFieldState>();

  late TextEditingController _numberController;
  final _numberFocusNode = FocusNode();
  final _numberFormKey = GlobalKey<FormFieldState>();

  final _formKey = GlobalKey<FormState>();

  final double horizontalPadding = 50.w;
  File? _fileImage;
  String? userName, phoneNumber, email;
  bool _inAsyncCall = false;
  final _profileBloc = ProfileBloc();

  /// state
  @override
  void initState() {
    super.initState();

    userName = widget.profileEntity.name;
    phoneNumber = widget.profileEntity.phone ?? '';
    email = widget.profileEntity.email;
    _userNameController = TextEditingController(text: userName);
    _numberController = TextEditingController(text: phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: _inAsyncCall,
        child: BlocListener<ProfileBloc, ProfileState>(
          bloc: _profileBloc,
          listener: (_, state) {
            state.map(
              initialProfile: (_) => setState(() => _inAsyncCall = true),
              loadingProfile: (_) => setState(() => _inAsyncCall = true),
              successUpdateProfile: (_) => handleSuccessUpdateProfile(),
              errorProfile: (s) => handleErrorProfile(s),
              successGetNotifications: (_) {},
            );
          },
          child: Scaffold(
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.r),
                  bottomRight: Radius.circular(40.r),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildImageNameEmail(),
                      SizedBox(height: 100.h),
                      _buildUserNameTextField(),
                      SizedBox(height: 50.h),
                      _buildNumberAndCountryTextField(),
                      SizedBox(height: 100.h),
                      _buildChangePasswordButton(),
                      SizedBox(height: 30.h),
                      _buildChangeEmailButton(),
                      SizedBox(height: 30.h),
                      _buildWallet(),
                      SizedBox(height: 0.1.sh),
                      _buildSubmitForm(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _numberController.dispose();
    _profileBloc.close();
    super.dispose();
  }

  /// widget
  Widget _buildImageNameEmail() {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 40.h, start: 50.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// image
          ProfileImageWidget(
            imageUrl: '',
            fromNetwork: false,
            onTap: _onProfileImageTap,
          ),

          const SizedBox(width: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// name
              Text(
                userName ?? '',
                style: TextStyle(fontSize: 45.sp),
              ),
              SizedBox(height: 30.h),

              /// email
              Text(
                email ?? '',
                style: TextStyle(fontSize: 38.sp, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserNameTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckTextField(
        hintText: Translation.of(context).userName,
        hintStyle: TextStyle(fontSize: 40.sp, color: Colors.white),
        controller: _userNameController,
        textKey: _userNameFormKey,
        focusNode: _userNameFocusNode,
        fillColor: Colors.orange.shade800.withOpacity(.5),
        radius: 50.r,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40.sp, color: Colors.white),
        contentPadding: EdgeInsets.all(50.w),
        onSubmitted: (_) {
          _numberFocusNode.requestFocus();
        },
        validator: (userName) {
          if (Validators.isValidName(userName ?? '')) return null;
          return Translation.of(context).thisInputMustntBeEmpty;
        },
        onChanged: (_) {
          _userNameFormKey.currentState?.validate();
        },
      ),
    );
  }

  Widget _buildNumberAndCountryTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckTextField(
        hintText: Translation.of(context).phoneNumber,
        hintStyle: TextStyle(fontSize: 40.sp, color: Colors.white),
        controller: _numberController,
        textKey: _numberFormKey,
        focusNode: _numberFocusNode,
        fillColor: Colors.orange.shade800.withOpacity(.5),
        radius: 50.r,
        textAlign: TextAlign.center,
        textInputType: TextInputType.number,
        textInputAction: TextInputAction.done,
        style: TextStyle(fontSize: 40.sp, color: Colors.white),
        contentPadding: EdgeInsets.all(50.w),
        formatter: [
          PhoneNumberTextInputFormatter(),
        ],
        onSubmitted: (_) {},
        validator: (userName) {
          if (Validators.isValidPhoneNumber(userName ?? '')) return null;
          return Translation.of(context).thisInputMustntBeEmpty;
        },
        onChanged: (_) {
          _numberFormKey.currentState?.validate();
        },
        // maxLength: 15,
      ),
    );
    /*return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: InternationalPhoneNumberInput(
        textFieldController: _numberController,
        focusNode: _numberFocusNode,
        onInputChanged: (phoneNumber) {},
        initialValue: PhoneNumber(isoCode: "SY"),
        textAlign: TextAlign.center,
        textStyle: TextStyle(fontSize: 40.sp, color: Colors.white),
        spaceBetweenSelectorAndTextField: 0,
        errorMessage: Translation.of(context).thisInputMustntBeEmpty,
        validator: (number) {
          return null;
        },
        selectorTextStyle: TextStyle(fontSize: 40.sp),
        inputDecoration: InputDecoration(
          hintText: Translation.of(context).phoneNumber,
          hintStyle: TextStyle(fontSize: 40.sp, color: Colors.white),
          fillColor: Colors.orange[800].withOpacity(.5),
          filled: true,
          contentPadding: EdgeInsets.all(50.w),
          errorStyle: TextStyle(fontSize: 30.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );*/
  }

  Widget _buildSubmitForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckButton(
        onPressed: _onSubmitClick,
        backgroundColor: Colors.orange[800],
        text: Translation.of(context).update,
        textColor: Colors.white,
        disableShadow: true,
      ),
    );
  }

  Widget _buildWallet() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            WalletScreen.routeName,
          );
        },
        backgroundColor: Colors.white,
        text: "محفظتي",
        textColor: Colors.orange,
      ),
    );
  }

  Widget _buildChangePasswordButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckButton(
        onPressed: _onChangePasswordClick,
        backgroundColor: Colors.white,
        text: Translation.of(context).changePassword,
        textColor: Colors.orange,
        shadowColor: Colors.orange.withOpacity(.1),
      ),
    );
  }

  Widget _buildChangeEmailButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckButton(
        onPressed: _onChangeEmailClick,
        backgroundColor: Colors.white,
        text: Translation.of(context).changeEmail,
        textColor: Colors.orange,
        shadowColor: Colors.orange.withOpacity(.1),
      ),
    );
  }

  /// logic
  void _onSubmitClick() {
    if (_formKey.currentState?.validate() ?? false) {
      // print(_userNameController.text);
      // print(_numberController.text);
      _profileBloc.add(
        ProfileEvent.updateProfile(
          updateProfileParameter: UpdateProfileParameter(
            name: _userNameController.text,
            phone: _numberController.text,
          ),
        ),
      );
    }
  }

  void _onChangePasswordClick() {
    Navigator.pushNamed(context, ChangePasswordScreen.routeName);
  }

  void _onChangeEmailClick() {}

  void _onProfileImageTap() {
    showDemoActionSheet(
      context: context,
      child: CupertinoActionSheet(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () async {
                  _fileImage = await getImageFromCamera();
                  if (_fileImage == null) {
                    return;
                  }
                  Navigator.pop(context);
                  _uploadImage(imagePath: _fileImage!.path, ctx: context);
                },
                child: Icon(
                  Icons.camera_alt,
                  color: CoreStyle.primaryTheme,
                  size: ScreenUtil().setHeight(150),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () async {
                  _fileImage = await getImageFromGallery();
                  if (_fileImage == null) {
                    return;
                  }

                  Navigator.pop(context);
                  _uploadImage(imagePath: _fileImage!.path, ctx: context);
                },
                child: Icon(
                  Icons.image,
                  color: CoreStyle.primaryTheme,
                  size: ScreenUtil().setHeight(150),
                ),
              ),
            )
          ],
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              "احذف الصورة",
              style: TextStyle(color: CoreStyle.primaryTheme),
            ),
            isDefaultAction: true,
            onPressed: () {
              //_deleteProfileImgRequest();
              Navigator.pop(context);
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text(
            Translation.of(context).cancel,
            style: TextStyle(color: CoreStyle.primaryTheme),
          ),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  void showDemoActionSheet(
      {required BuildContext context, required Widget child}) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }

  Future<File?> getImageFromGallery() async {
    final _fileImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (_fileImage != null) {
      File image = await FlutterExifRotation.rotateImage(path: _fileImage.path);
      image = await _cropImage(image.path);
      return image;
    } else
      return null;
  }

  _uploadImage({required String imagePath, required ctx}) {}

  Future<File?> getImageFromCamera() async {
    final _fileImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (_fileImage != null) {
      File image = await FlutterExifRotation.rotateImage(path: _fileImage.path);
      image = await _cropImage(image.path);
      return image;
    } else
      return null;
  }

  _cropImage(filePath) async {
    return await ImageCropper().cropImage(
      sourcePath: filePath,
      maxWidth: 1080,
      maxHeight: 1080,
      aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
    );
  }

  void handleSuccessUpdateProfile() {
    setState(() {
      _inAsyncCall = false;
    });
    t.Toast.show(
      "تم التحديث بنجاح",
    );
    Navigator.pop(context);
  }

  void handleErrorProfile(ErrorProfile state) {
    setState(() => _inAsyncCall = false);
    ErrorViewer.showError(
      context: context,
      error: state.error!,
      callback: state.callback,
      errorViewerOptions: ErrVToastOptions(
        textColor: Colors.white,
        toastGravity: ToastGravity.BOTTOM,
      ),
    );
  }
}
