import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/change_notifiers/coupons_notifier.dart';
import 'home_screen_content.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var homeInitEntity = Provider.of<Profile>(context).homeInitEntity;

    if (homeInitEntity == null) {
      final error = Provider.of<Profile>(context).homeError;
      if (error == null) {
        return WaitingWidget();
      } else {
        return ErrorScreenWidget(error: error.error!, callback: error.callback);
      }
    }

    return HomeScreenContent(
      homeInitEntity: homeInitEntity,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
