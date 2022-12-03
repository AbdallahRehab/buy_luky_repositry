import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_screen_content.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "profileScreen/";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    ProfileEntity profileEntity = Provider.of<Profile>(context).profileEntity!;
    return ProfileScreenContent(profileEntity: profileEntity);
  }

  @override
  bool get wantKeepAlive => true;
}
