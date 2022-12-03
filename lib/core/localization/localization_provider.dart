import 'package:buy_luck/core/datasources/shared_preference.dart';
import 'package:buy_luck/main.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../constants/app/app_constants.dart';

@singleton
class LocalizationProvider extends ChangeNotifier {
  Locale _appLocale = const Locale(AppConstants.LANG_AR);

  /// To know if this first time run the application or not
  bool _firstStart = false;

  /// Get current Locale supported
  Locale get appLocal => const Locale(AppConstants.LANG_AR);

  String get currentLanguage => appLocal.languageCode;

  /// Get and set first start
  bool get firstStart => _firstStart;

  void firstStartOff() {
    /// firstStart = true not touchable from outside
    _firstStart = false;
  }

  /// Fetch app locale, called in [main]
  fetchLocale() async {
    var prefs = await SpUtil.getInstance();

    /// Check if the application is first start or not
    if (prefs.getBool(AppConstants.KEY_FIRST_START) == null) {
      /// Set first start is true
      await prefs.putBool(AppConstants.KEY_FIRST_START, true);
      _firstStart = true;
    }
    if (prefs.getString(AppConstants.KEY_LANGUAGE) == null) {
      _appLocale = const Locale(AppConstants.LANG_AR);
      await prefs.putString(
        AppConstants.KEY_LANGUAGE,
        AppConstants.LANG_AR,
      );
      return Null;
    }
    String? local = prefs.getString(AppConstants.KEY_LANGUAGE);
    _appLocale = Locale(local ?? AppConstants.LANG_AR);
    return Null;
  }

  Future<void> changeLanguage(Locale type, BuildContext context) async {
    var prefs = await SpUtil.getInstance();
    if (_appLocale == type) {
      return;
    }
    if (type == const Locale(AppConstants.LANG_AR)) {
      _appLocale = const Locale(AppConstants.LANG_AR);
      await prefs.putString(AppConstants.KEY_LANGUAGE, AppConstants.LANG_AR);
    } else {
      _appLocale = const Locale(AppConstants.LANG_EN);
      await prefs.putString(AppConstants.KEY_LANGUAGE, AppConstants.LANG_EN);
    }
    notifyListeners();
  }
}
