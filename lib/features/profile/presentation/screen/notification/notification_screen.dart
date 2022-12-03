import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:buy_luck/features/profile/presentation/screen/notification/notification_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = "notificationScreen/";
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  /// variables
  final profileBloc = ProfileBloc();
  final appBarTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
  );

  /// state
  @override
  void initState() {
    super.initState();
    profileBloc.add(ProfileEvent.getNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("الإشعارات", style: appBarTitleStyle),
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        builder: (context, state) {
          return state.map(
            initialProfile: (_) => _buildWaitingScreen(),
            loadingProfile: (_) => _buildWaitingScreen(),
            successUpdateProfile: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            successGetNotifications: (s) => _buildContentScreen(s),
            errorProfile: (s) => _buildErrorScreen(s),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    profileBloc.close();
    super.dispose();
  }

  /// widget
  Widget _buildWaitingScreen() {
    return WaitingWidget();
  }

  Widget _buildErrorScreen(ErrorProfile state) {
    return ErrorScreenWidget(error: state.error!, callback: state.callback);
  }

  Widget _buildContentScreen(SuccessGetNotifications state) {
    return NotificationScreenContent(
      notificationListEntity: state.notificationListEntity!,
    );
  }

  /// logic
}
