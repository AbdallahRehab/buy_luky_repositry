import 'package:buy_luck/core/common/style/dimens.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart' as ftoast;

class Toast {
  static void show(
    String msg, {
    int duration = 2000,
    ftoast.Toast androidDuration = ftoast.Toast.LENGTH_LONG,
    double fontSize = Dimens.font_sp12,
    ftoast.ToastGravity gravity = ftoast.ToastGravity.BOTTOM,
    Color? backgroundColor = Colors.white54,
    Color? textColor = Colors.black,
  }) {
    ftoast.Fluttertoast.showToast(
      msg: msg,
      toastLength: androidDuration,
      gravity: gravity,
      timeInSecForIosWeb: duration,
      fontSize: fontSize,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }

// static void cancelToast() {
// }
}
