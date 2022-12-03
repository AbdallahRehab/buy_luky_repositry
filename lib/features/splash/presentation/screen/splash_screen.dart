import 'dart:isolate';

import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/common/Common.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/features/home/presentation/screen/app_main_screen.dart';
import 'package:buy_luck/features/splash/presentation/bloc/bloc.dart';
import 'package:buy_luck/features/user_management/data/repository/user_management_repository.dart';
import 'package:buy_luck/features/user_management/presentation/screen/login_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/common/FCM/fcm.dart';
import '../../../../core/common/change_notifiers/coupons_notifier.dart';
import '../../../../core/ui/dialogs/custom_dialogs.dart';
import '../../../../core/ui/error_ui/error_viewer/dialog/errv_dialog_options.dart';
import 'onboarding_screen.dart';
import 'splash_screen_content.dart';

final ReceivePort port = ReceivePort();
bool firstStart = false;

class SplashScreen extends StatefulWidget {
  static const routeName = 'SplashScreen/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashBloc = SplashBloc();
  bool _canGo = false;

  /// Cancel tokens
  CancelToken _cancelToken = CancelToken();

  @override
  void initState() {
    _splashBloc.add(
      SplashEvent.initSplashEvent(cancelToken: _cancelToken),
    );
    print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
    // Future.delayed(Duration(seconds: 2),() async {
    //start FCM
    FCM().startFCM();

    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () async {
      //start FCM
      FCM().startFCM();
    });
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        bloc: _splashBloc,
        listener: (context, state) {
          state.map(
            initial: (_) {},
            loading: (_) {},
            loaded: (s) => _splashScreenLoaded(context, s),
            splashError: (e) =>
                ErrorViewer.showError(
                  context: context,
                  error: e.error!,
                  callback: e.callback!,
                  errorViewerOptions: ErrVDialogOptions(
                    cancelOptions: ErrVButtonOptions(
                      buttonText: Translation
                          .of(context)
                          .closeApp,
                      onBtnPressed: (_) {
                        SystemNavigator.pop();
                      },
                    ),
                  ),
                ),
            needUpdateError: (e) => () {},
          );
        },
        child: SplashScreenContent(
          onAnimationFinished: () {
            if (_canGo) {
              outFromSplash();
            } else {
              _canGo = true;
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _splashBloc.close();
    super.dispose();
  }

  void _handleSplashBlocError(BuildContext context, SplashError errorState) {
    ErrorViewer.showError(
      context: context,
      error: errorState.error!,
      callback: errorState.callback!,
      errorViewerOptions: ErrVDialogOptions(
        isDismissible: false,
        cancelOptions: ErrVButtonOptions(
          buttonText: Translation
              .of(context)
              .closeApp,
          onBtnPressed: (context) {
            SystemNavigator.pop();
          },
        ),
      ),
    );
  }

  void _splashScreenLoaded(BuildContext context, Loaded loadedState) {
    if (loadedState.locked ?? false) {
      _canGo = false;
      showCustomDialogWithIconDialog(
        context: context,
        content:
        loadedState.message ?? Translation
            .of(context)
            .generalErrorMessage,
        isDesmissible: false,
        icon: Icon(
          Icons.close,
          color: Colors.white,
        ),
        iconBackColor: CoreStyle.primaryTheme,
      );
      return;
    }

    Provider.of<Profile>(context, listen: false).profileEntity =  loadedState.profileEntity;

    Provider.of<Profile>(context, listen: false).setHomeInitEntity =  loadedState.homeInitEntity;



    if (_canGo) {
      outFromSplash();
    } else {
      _canGo = true;
    }
  }

  void _handleSplashNeedsUpdate(NeedUpdateError needUpdateError) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () {
            return Future(() => false);
          },
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20.0))),
            title: Text(Translation
                .of(context)
                .updateTitle,
                style: CommonTextStyle.largeText),
            content: Text(Translation
                .of(context)
                .updateMessage,
                style: CommonTextStyle.largeText),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                child: Text(Translation
                    .of(context)
                    .confirm),
                onPressed: () {
                  launch(needUpdateError.appLink);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void outFromSplash() async {

    if (await UserManagementRepository.hasToken &&
        (await UserManagementRepository.isVerify ?? false)) {
      Navigator.pushReplacementNamed(context, MainAppScreen.routeName);
    } else {
      if (firstStart)
        Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
      else
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }
}
