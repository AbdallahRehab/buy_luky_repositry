import 'dart:io';

import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/Common/validators.dart';
import 'package:buy_luck/core/localization/flutter_localization.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_button.dart';
import 'package:buy_luck/core/ui/dialogs/show_dialog.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/snack_bar/errv_snack_bar_options.dart';
import 'package:buy_luck/core/ui/toast.dart' as t;
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:buy_luck/features/upload/domain/usecase/uploade_usecase.dart';
import 'package:buy_luck/features/upload/presentation/bloc/upload_image_bloc.dart';
import 'package:buy_luck/features/upload/presentation/upload_image_changenotifier.dart';
import 'package:buy_luck/features/upload/presentation/widget/upload_text_widget.dart';
import 'package:buy_luck/features/user_management/presentation/screen/change_email_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/change_password_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/net/api_url.dart';
import '../../../../core/ui/error_ui/error_viewer/toast/errv_toast_options.dart';
import '../../../user_management/presentation/param/reset_password_screen_param.dart';
import '../../../user_management/presentation/screen/reset_password_screen.dart';
import '../param/edit_profile_param.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = "editProfileScreen/";
  final EditProfileParam editProfileParam;

  const EditProfileScreen({
    Key? key,
    required this.editProfileParam,
  }) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  /// variables
  final appBarTitleStyle = TextStyle(color: Colors.black, fontSize: 60.sp);
  File? _fileImage;
  final iconsSize = 65.sp;
  final optionsTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  final ProfileBloc _profileBloc = ProfileBloc();
  final _uploadBloc = UploadImageBloc();
  bool _inAsyncCall = false;
  double horizontalPadding = 80.w;
  CancelToken imageCancelToken = CancelToken();
  late BuildContext dialogCtx;

  /// controllers
  late TextEditingController _userController;
  late TextEditingController _phoneController;

  /// focus nodes
  final FocusNode _userFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();

  /// key
  final _formKey = GlobalKey<FormState>();
  final _userKey = GlobalKey<FormFieldState>();
  final _phoneKey = GlobalKey<FormFieldState>();

  /// state
  @override
  void initState() {
    super.initState();
    _userController =
        TextEditingController(text: widget.editProfileParam.userName);
    _phoneController =
        TextEditingController(text: widget.editProfileParam.phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _inAsyncCall,
      child: MultiBlocListener(
        listeners: [
          BlocListener(
            listenWhen: (p, c) => p != c,
            bloc: _uploadBloc,
            listener: (context, state) {
              if (state is UploadImageLoading) {
                ShowDialog().showElasticDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      dialogCtx = context;
                      return WillPopScope(
                        onWillPop: () => Future.value(false),
                        child: Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setWidth(50),
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(ScreenUtil().setWidth(25)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.width * 0.60,
                            height: MediaQuery.of(context).size.width * 0.30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CupertinoActivityIndicator(
                                      radius: ScreenUtil().setWidth(30),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(40),
                                    ),
                                    UploadTextPercentage(),
                                  ],
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(30),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (!imageCancelToken.isCancelled)
                                      imageCancelToken.cancel();
                                    imageCancelToken = CancelToken();
                                  },
                                  child: Text(
                                    "إلغاء التحميل",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: CoreStyle.primaryTheme,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else if (state is UploadImageSuccess) {
                Navigator.pop(dialogCtx);
                RestartWidget.restartApp(context);
                handleSuccessUpdateProfile();
              } else if (state is UploadImageFailure) {
                Navigator.pop(dialogCtx);
                if (imageCancelToken.isCancelled) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "تم إلغاء التحميل",
                      ),
                    ),
                  );
                  imageCancelToken = CancelToken();
                  return;
                }
                ErrorViewer.showError(
                  context: context,
                  callback: state.callback,
                  error: state.error!,
                  errorViewerOptions: ErrVSnackBarOptions(),
                );
              }
            },
          ),
          BlocListener<ProfileBloc, ProfileState>(
            bloc: _profileBloc,
            listener: (context, state) {
              state.map(
                initialProfile: (_) => setState(() => _inAsyncCall = true),
                loadingProfile: (_) => setState(() => _inAsyncCall = true),
                successUpdateProfile: (_) => handleSuccessUpdateProfile(),
                errorProfile: (s) => handleErrorProfile(s),
                successGetNotifications: (_) {},
              );
            },
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          appBar: AppBar(
            title: Text("تعديل الملف الشخصي", style: appBarTitleStyle),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: BackButton(
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.only(top: 30.h),
              children: [
                _buildProfileImage(),
                SizedBox(height: 75.h),
                _buildUserNameTextField(),
                _buildPhoneTextField(),
                _buildChangePasswordButton(),
                // _buildChangeEmailButton(),
                SizedBox(height: 50.h),
                _buildSubmitButton(),
                SizedBox(height: 75.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _profileBloc.close();
    _uploadBloc.close();
    super.dispose();
  }

  /// widget
  Widget _buildProfileImage() {
    final profile = Provider.of<Profile>(context, listen: false).profileEntity;
    return Center(
      child: Stack(
        children: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 325.w,
                height: 325.w,
                child: InkWell(
                  onTap: _onProfileImageTap,
                  child: _fileImage?.path != null
                      ? Image.file(
                          File(_fileImage!.path),
                          fit: BoxFit.cover,
                        )
                      : profile?.image == null
                          ? Image.asset("assets/images/png/person.png")
                          : FadeInImage(
                              image: NetworkImage(
                                  API_BASE_IMG + (profile!.image ?? '')),
                              placeholder:
                                  AssetImage("assets/images/png/person.png"),
                              fit: BoxFit.cover,
                            ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: CoreStyle.primaryTheme,
                  shape: BoxShape.circle,
                ),
                child:
                    Icon(Icons.photo_camera, color: Colors.white, size: 50.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserNameTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: _buildTextField(
        icon: Icons.person_rounded,
        hintText: Translation.of(context).userName,
        focusNode: _userFocusNode,
        textKey: _userKey,
        textInputAction: TextInputAction.next,
        controller: _userController,
        onSubmitted: (value) {
          _phoneFocusNode.requestFocus();
        },
        validator: (value) {
          if (Validators.isValidName(value ?? '')) return null;
          return Translation.of(context).thisInputMustntBeEmpty;
        },
        formatter: [],
        onChanged: (value) {
          _userKey.currentState?.validate();
        },
        // maxLength: 12,
        textInputType: TextInputType.text,
      ),
    );
  }

  Widget _buildPhoneTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: _buildTextField(
        icon: Icons.phone_rounded,
        hintText: Translation.of(context).phoneNumber,
        focusNode: _phoneFocusNode,
        textKey: _phoneKey,
        textInputAction: TextInputAction.done,
        controller: _phoneController,
        onSubmitted: (value) {},
        validator: (value) {
          if (Validators.isValidPhoneNumber(value ?? '')) return null;
          return Translation.of(context).thisInputMustntBeEmpty;
        },
        formatter: [],
        onChanged: (value) {
          _phoneKey.currentState?.validate();
        },
        // maxLength: 12,
        textInputType: TextInputType.phone,
      ),
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

  Widget _buildChangePasswordButton() {
    return _buildListTile(
      leading: Icon(Icons.lock_outline,
          color: CoreStyle.primaryTheme, size: iconsSize),
      title: Text("تغيير كلمة السر", style: optionsTextStyle),
      onTap: _onChangePasswordTap,
    );
  }

  Widget _buildChangeEmailButton() {
    return _buildListTile(
      leading: Icon(Icons.email_outlined,
          color: CoreStyle.primaryTheme, size: iconsSize),
      title: Text("تغيير البريد الإلكتروني", style: optionsTextStyle),
      onTap: _onChangeEmailTap,
    );
  }

  Widget _buildListTile({
    required Widget leading,
    required Widget title,
    required Function() onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 80.w),
      horizontalTitleGap: 0,
      onTap: onTap,
      leading: leading,
      title: title,
      trailing: Icon(Icons.arrow_forward_ios, size: 40.sp, color: Colors.grey),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: BuyLuckButton(
        onPressed: _onSubmitClick,
        backgroundColor: CoreStyle.primaryTheme,
        text: Translation.of(context).update,
        textColor: Colors.white,
        disableShadow: true,
      ),
    );
  }

  /// logic
  void _onProfileImageTap() {
    showDemoActionSheet(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
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
          /*actions: [
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
          ],*/
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
        );
      },
    );
  }

  void showDemoActionSheet(
      {required BuildContext context,
      required Widget Function(BuildContext context) builder}) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: builder,
    );
  }

  Future<File?> getImageFromGallery() async {
    final _fileImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (_fileImage != null) {
      File image = await FlutterExifRotation.rotateImage(path: _fileImage.path);
      // image = await _cropImage(image.path);
      return image;
    } else
      return null;
  }

  _uploadImage({required String imagePath, required ctx}) {
    setState(() {
      _fileImage;
    });
  }

  Future<File?> getImageFromCamera() async {
    final _fileImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (_fileImage != null) {
      File image = await FlutterExifRotation.rotateImage(path: _fileImage.path);
      // image = await _cropImage(image.path);
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

  void _onSubmitClick() {
    if ((_fileImage?.path.length ?? 0) > 0) {
      if (_formKey.currentState?.validate() ?? false) {
        if (!imageCancelToken.isCancelled) imageCancelToken.cancel();
        imageCancelToken = CancelToken();
        _uploadBloc.add(
          StartUploadImageEvent(
            params: UploadParams(
              parameter: UpdateProfileParameter(
                name: _userController.text,
                phone: _phoneController.text,
                image: _fileImage?.path,
                cancelToken: imageCancelToken,
              ),
              onSendProgress: (sent, total) {
                setState(
                  () {
                    Provider.of<UploadImageChangeNotifier>(context,
                            listen: false)
                        .setUploadPercentage(newVal: (sent / total * 100));
                  },
                );
              },
            ),
          ),
        );
      }
    } else {
      if (_formKey.currentState?.validate() ?? false) {
        // print(_userNameController.text);
        // print(_numberController.text);
        _profileBloc.add(
          ProfileEvent.updateProfile(
            updateProfileParameter: UpdateProfileParameter(
              name: _userController.text,
              phone: _phoneController.text,
            ),
          ),
        );
      }
    }
  }

  void handleSuccessUpdateProfile() {
    setState(() {
      _inAsyncCall = false;
    });
    t.Toast.show(
      "تم التحديث بنجاح",
    );

    /// update profile entity
    var profileEntity =
        Provider.of<Profile>(context, listen: false).profileEntity;

    Provider.of<Profile>(context, listen: false).profileEntity =
        profileEntity?.copyWith(
      name: _userController.text,
      phone: _phoneController.text,
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

  void _onChangePasswordTap() {
    FocusScope.of(context).unfocus();
    pushNewScreenWithRouteSettings(
      context,
      // screen: ChangePasswordScreen(),
      // settings: RouteSettings(name: ChangePasswordScreen.routeName),
      screen: ResetPasswordScreen(param: ResetPasswordScreenParam(widget.editProfileParam.email!)),
      settings: RouteSettings(name: ResetPasswordScreen.routeName),
    );
  }

  void _onChangeEmailTap() {
    FocusScope.of(context).unfocus();
    pushNewScreenWithRouteSettings(
      context,
      screen: ChangeEmailScreen(),
      settings: RouteSettings(name: ChangeEmailScreen.routeName),
    );
  }
}
