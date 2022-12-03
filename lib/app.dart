import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:buy_luck/core/common/app_config.dart';
import 'package:buy_luck/features/splash/presentation/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'core/common/provider_list.dart';
import 'core/constants/app/app_constants.dart';
import 'core/localization/flutter_localization.dart';
import 'core/navigation/navigation_service.dart';
import 'core/navigation/route_generator.dart';
import 'di/service_locator.dart';
import 'generated/l10n.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider().dependItems],
      child: ScreenUtilInit(
        designSize: AppConfig.screenUtilDesignSize(),
        builder: () {
          return Consumer<LocalizationProvider>(
            builder: (_, provider, __) {
              return ThemeProvider(
                initTheme: AppConfig().themeData(
                  (provider.appLocal.languageCode.contains(AppConstants.LANG_EN)
                      ? GoogleFonts.poppins().fontFamily
                      : GoogleFonts.cairo().fontFamily)!,
                ),
                builder: (_, __) {
                  return RestartWidget(
                    child: MaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: AppConstants.TITLE_APP_NAME,

                      /// Routing
                      navigatorKey: getIt<NavigationService>().getNavigationKey,
                      onGenerateRoute: getIt<NavigationRoute>().generateRoute,
                      initialRoute: "/",

                      navigatorObservers: const [],

                      /// Setup app localization
                      supportedLocales: Translation.delegate.supportedLocales,
                      locale: provider.appLocal,

                      localizationsDelegates: [
                        Translation.delegate,
                        // Built-in localization of basic text for Material widgets
                        GlobalMaterialLocalizations.delegate,
                        // Built-in localization for text direction LTR/RTL
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        DefaultCupertinoLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate
                      ],

                      /// Run app at first time on device language
                      localeResolutionCallback: (locale, supportedLocales) {
                        if (provider.firstStart) {
                          /// Check if the current device locale is supported
                          for (var supportedLocale in supportedLocales) {
                            if (supportedLocale.languageCode ==
                                locale!.languageCode) {
                              /// Set _firstStart false
                              provider.firstStartOff();

                              /// Change language
                              provider.changeLanguage(
                                Locale(locale.languageCode),
                                context,
                              );
                              return supportedLocale;
                            }
                          }

                          /// If the locale of the device is not supported, use the first one
                          /// from the list (English, in this case).
                          provider.changeLanguage(
                            supportedLocales.first,
                            context,
                          );
                          return supportedLocales.first;
                        } else {
                          return null;
                        }
                      },

                      /// Theming
                      theme: AppConfig().themeData(
                        (provider.appLocal.languageCode
                                .contains(AppConstants.LANG_EN)
                            ? GoogleFonts.poppins().fontFamily
                            : GoogleFonts.cairo().fontFamily)!,
                      ),
                      themeMode: AppConfig().themeMode,

                      /// Init screen
                      home: SplashScreen(),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    ApplicationProvider().dispose(context);
    super.dispose();
  }
}
