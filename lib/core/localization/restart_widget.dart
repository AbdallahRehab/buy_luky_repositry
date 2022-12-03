// this class for restart app from main
// wrap whole app into a statefulwidget. And when we want to restart app,
// rebuild that statefulwidget with a child that possess a different Key.
//
//This would make you loose the whole state of your app
// you can reset your app from anywhere using RestartWidget.restartApp(context)
import 'package:buy_luck/features/splash/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../navigation/nav.dart';

class RestartWidget extends StatefulWidget {
  final Widget? child;
  final Function()? onRestart;

  RestartWidget({
    this.child,
    this.onRestart,
  });

  static restartApp(BuildContext context) {
    // final _RestartWidgetState? state = context.findAncestorStateOfType();
    // state?.restartApp();
    Nav.popTo((p0) => p0.isFirst);
    Nav.off(SplashScreen.routeName);
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    widget.onRestart?.call();
    this.setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.child,
    );
  }
}
