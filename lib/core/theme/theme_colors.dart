import 'package:buy_luck/core/common/app_config.dart';
import 'package:flutter/material.dart';

class ThemeColors {
  static final ThemeColors _instance = ThemeColors._();
  bool isLight = true;

  factory ThemeColors() {
    return _instance;
  }

  ThemeColors._() {
    isLight = _isLightTheme;
  }

  /// Adding theme colors getters
  Color get textColor {
    if (isLight) {
      return Colors.black54;
    } else {
      return Colors.white60;
    }
  }

  /// Other logic
  void updateThemeMode() {
    isLight = _isLightTheme;
    //notifyListeners();
  }

  bool get _isLightTheme {
    return (AppConfig().themeMode) == ThemeMode.light;
  }
}
