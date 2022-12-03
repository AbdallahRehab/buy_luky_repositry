import 'package:buy_luck/core/common/app_colors.dart';
import 'package:buy_luck/core/common/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'dark/dark_theme.dart';
part 'light/light_theme.dart';

@lazySingleton
class ThemeConfig {
  // final ThemeData _lightTheme = _getLightTheme();
  // final ThemeData _darkTheme = _getDarkTheme();

  ThemeData lightTheme(String fontName) => _getLightTheme(fontName);

  ThemeData darkTheme(String fontName) => _getDarkTheme(fontName);
}
