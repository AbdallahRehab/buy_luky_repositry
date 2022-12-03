import 'package:buy_luck/core/errors/app_errors.dart';
import 'package:flutter/cupertino.dart';

abstract class ResponseValidator {
  AppErrors? error;
  String? errorMessage;

  void processData(dynamic data);

  bool get isValid {
    return !hasError;
  }

  bool get hasError {
    return error != null;
  }

  AppErrors get getError {
    if (error != null) {
      return error!;
    } else {
      throw FlutterError("Call [hasError] before to check there is an error");
    }
  }
}
