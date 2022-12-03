import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:buy_luck/features/profile/presentation/screen/notification/notification_screen_content.dart';
import 'package:buy_luck/features/profile/presentation/screen/privacy/privacy_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../core/common/change_notifiers/privacy_and_terms_notifier.dart';

class PrivacyScreen extends StatefulWidget {
  static const String routeName = "privacyScreen/";
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  /// variables
  final appBarTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
  );

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("سياسة الخصوصية", style: appBarTitleStyle),
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _buildContentScreen(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// widget
  Widget _buildWaitingScreen() {
    return WaitingWidget();
  }

  Widget _buildErrorScreen(ErrorProfile state) {
    return ErrorScreenWidget(error: state.error!, callback: state.callback);
  }

  Widget _buildContentScreen() {
    return PrivacyScreenContent(
      privacyEntity: Provider.of<PrivacyAndTermsNotifier>(context, listen: false).privacyEntity,
    );
  }

  /// logic
}
