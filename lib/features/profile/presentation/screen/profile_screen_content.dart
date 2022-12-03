import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/features/cart/presentation/screen/wallet_screen.dart';
import 'package:buy_luck/features/order/presentation/screen/my_orders_screen.dart';
import 'package:buy_luck/features/profile/presentation/screen/notification/notification_screen.dart';
import 'package:buy_luck/features/profile/presentation/screen/privacy/privacy_screen.dart';
import 'package:buy_luck/features/profile/presentation/screen/terms/terms_screen.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import './edit_profile_screen.dart';
import '../../../../core/common/Utils.dart';
import '../../../../core/net/api_url.dart';
import '../param/edit_profile_param.dart';

class ProfileScreenContent extends StatefulWidget {
  final ProfileEntity profileEntity;

  const ProfileScreenContent({
    Key? key,
    required this.profileEntity,
  }) : super(key: key);

  @override
  _ProfileScreenContentState createState() => _ProfileScreenContentState();
}

class _ProfileScreenContentState extends State<ProfileScreenContent> {
  /// variables
  final userNameStyle = TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold);
  final userEmailStyle = TextStyle(
      fontSize: 40.sp, color: Colors.grey, fontWeight: FontWeight.bold);
  final appBarTitleStyle = TextStyle(color: Colors.black, fontSize: 60.sp);
  final iconsSize = 65.sp;
  final optionsTextStyle =
      TextStyle(fontSize: 38.sp, fontWeight: FontWeight.bold);

  /// state
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("الملف الشخصي", style: appBarTitleStyle),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30.h),
        children: [
          _buildProfileInfo(),
          SizedBox(height: 100.h),
          _buildProfileOptions(),
        ],
      ),
    );
  }

  /// widget
  Widget _buildProfileInfo() {
    return Container(
      child: Column(
        children: [
          _buildProfileImage(),
          SizedBox(height: 40.h),
          _buildUserName(),
          _buildUserEmail(),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    final profile = Provider.of<Profile>(context, listen: false).profileEntity;
    return Container(
      width: 325.w,
      height: 325.w,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: profile?.image == null
          ? ClipOval(
              child: Image.asset("assets/images/png/person.png"),
            )
          : ClipOval(
              child: FadeInImage(
                image: NetworkImage(API_BASE_IMG + (profile!.image ?? '')),
                placeholder: AssetImage("assets/images/png/person.png"),
              ),
            ),
    );
  }

  Widget _buildUserName() {
    return Text(widget.profileEntity.name, style: userNameStyle);
  }

  Widget _buildUserEmail() {
    return Text(widget.profileEntity.email, style: userEmailStyle);
  }

  Widget _buildProfileOptions() {
    List<String> titles = [
      'كوبوناتي',
      'محفظتي',
      'تعديل الملف الشخصي',
      'الإشعارات',
      'سياسة الخصوصية',
      'الأحكام والشروط',
      'تسجيل الخروج'
    ];
    List<Icon> icons = [
      Icon(Icons.menu, color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.wallet_travel, color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.person_outline,
          color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.notifications_none_outlined,
          color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.privacy_tip_outlined,
          color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.text_snippet_rounded,
          color: CoreStyle.primaryTheme, size: iconsSize),
      Icon(Icons.logout, color: CoreStyle.primaryTheme, size: iconsSize),
    ];

    List<Function()> onTaps = [
      _onMyOrderTap,
      _onMyWalletTap,
      _onMyEditProfileTap,
      _onMyNotificationTap,
      _onMyPrivacyTap,
      _onMyTermsTap,
      _onMyLogoutTap
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < titles.length; i++)
          _buildListTile(
            leading: icons[i],
            title: Text(
              titles[i],
              style: optionsTextStyle,
            ),
            onTap: onTaps[i],
          )
      ],
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

  /// logic

  void _onMyOrderTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: MyOrdersScreen(),
      settings: RouteSettings(
        name: MyOrdersScreen.routeName,
      ),
    );
  }

  void _onMyWalletTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: WalletScreen(),
      settings: RouteSettings(name: WalletScreen.routeName),
    );
  }

  void _onMyEditProfileTap() async {
    await pushNewScreenWithRouteSettings(
      context,
      screen: EditProfileScreen(
        editProfileParam: EditProfileParam(
            widget.profileEntity.name, widget.profileEntity.phone,widget.profileEntity.email),
      ),
      settings: RouteSettings(name: EditProfileScreen.routeName),
    );
    // print(result);

    // if (result != null) {
    //   setState(() => userName = result);
    // }
  }

  void _onMyNotificationTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: NotificationScreen(),
      settings: RouteSettings(name: NotificationScreen.routeName),
    );
  }
  void _onMyPrivacyTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: PrivacyScreen(),
      settings: RouteSettings(name: PrivacyScreen.routeName),
    );
  } void _onMyTermsTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: TermsScreen(),
      settings: RouteSettings(name: TermsScreen.routeName),
    );
  }

  void _onMyLogoutTap() {
    logout(context);
  }
}
