import 'dart:async';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:buy_luck/core/constants/enums/app_theme_enum.dart';
import 'package:buy_luck/core/localization/flutter_localization.dart';
import 'package:buy_luck/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/home/presentation/screen/app_main_screen.dart';
import '../../features/user_management/data/repository/user_management_repository.dart';
import '../constants/app/app_constants.dart';
import 'app_config.dart';
import 'change_notifiers/logout_notifier.dart';

/// This function for move cursor from A to B
/// and will be take 3 parameter
/// [context] to know which screen we are
/// [currentFocus] where are you now ? which text form field
/// [nextFocus] where will be when called this function
/// [changeTheme] to change application theme
fieldFocusChange(
  BuildContext context,
  FocusNode currentFocus,
  FocusNode nextFocus,
) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

/// This for unFocus nodes
unFocusList({required List<FocusNode> focus}) {
  for (var element in focus) {
    element.unfocus();
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

changeTheme(BuildContext context) async {
  final fontFamily = (Provider.of<LocalizationProvider>(
    context,
    listen: false,
  ).appLocal.languageCode.contains(AppConstants.LANG_EN)
      ? GoogleFonts.poppins().fontFamily
      : GoogleFonts.cairo().fontFamily)!;
  var brightness = ThemeModelInheritedNotifier.of(context).theme.brightness;
  await AppConfig().persistAppTheme(
    brightness == Brightness.light ? AppThemes.DARK : AppThemes.LIGHT,
  );
  ThemeSwitcher.of(context).changeTheme(
    theme: AppConfig().themeData(fontFamily),
    isReversed: brightness == Brightness.dark ? true : false,
  );
  ThemeColors().updateThemeMode();
}

// logout() async {
//   if (await AccountRepository.hasToken){
//     await GetIt.I<AccountRepository>().deleteToken();
//     Navigator.of(NavigationService.instance.navigatorKey.currentContext!).pushNamedAndRemoveUntil(LoginScreen.routeName,(Route<dynamic> route) => false);
//   }
// }

logout(BuildContext context) async {
  notifyBottomNavIndex.add(0);
  if (await UserManagementRepository.hasToken) {
    try {
      bool result= await Provider.of<LogoutNotifier>(
        context,
        listen: false,
      ).logOutFun();

      if(result){
        print('QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ');
        await UserManagementRepository.deleteToken();
      }

      // Timer(const Duration(seconds: 3), () async {
      //   await UserManagementRepository.deleteToken();
      // });

    } on PlatformException catch (_) {
      RestartWidget.restartApp(context);
    } catch (e) {
      RestartWidget.restartApp(context);
    }
  }

  RestartWidget.restartApp(context);
}
