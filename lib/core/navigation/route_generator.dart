import 'package:buy_luck/features/cart/presentation/screen/payment_screen.dart';
import 'package:buy_luck/features/cart/presentation/screen/wallet_screen.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/presentation/screen/products_category_screen.dart';
import 'package:buy_luck/features/favorite/presentation/screen/favorite_screen.dart';
import 'package:buy_luck/features/home/presentation/screen/app_main_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/product_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/search_screen.dart';
import 'package:buy_luck/features/profile/presentation/param/edit_profile_param.dart';
import 'package:buy_luck/features/profile/presentation/screen/edit_profile_screen.dart';
import 'package:buy_luck/features/splash/presentation/screen/onboarding_screen.dart';
import 'package:buy_luck/features/splash/presentation/screen/splash_screen.dart';
import 'package:buy_luck/features/user_management/presentation/param/activate_email_param.dart';
import 'package:buy_luck/features/user_management/presentation/param/reset_password_screen_param.dart';
import 'package:buy_luck/features/user_management/presentation/screen/activateEmail_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/change_email_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/change_password_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/forgot_password_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/login_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/register_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/reset_password_screen.dart';
import 'package:buy_luck/features/user_management/presentation/screen/returnPassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../features/cart/presentation/screen/checkout_done_screen.dart';
import 'animations/fade_route.dart';

@lazySingleton
class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    final args = settings.arguments;
    switch (settings.name) {
      case SplashScreen.routeName:
        return FadeRoute(page: SplashScreen(), settings: settings);
      case MainAppScreen.routeName:
        return FadeRoute(page: MainAppScreen(), settings: settings);
      case RegisterScreen.routeName:
        return FadeRoute(page: RegisterScreen(), settings: settings);
      case LoginScreen.routeName:
        return FadeRoute(page: LoginScreen(), settings: settings);
      case ActivateEmail.routeName:
        if (args is ActivateEmailParam)
          return FadeRoute(
              page: ActivateEmail(param: args), settings: settings);
        return _errorRoute();
      case ReturnPassword.routeName:
        return FadeRoute(page: ReturnPassword(), settings: settings);
      case OnBoardingScreen.routeName:
        return FadeRoute(page: OnBoardingScreen(), settings: settings);
      case FavoriteScreen.routeName:
        return FadeRoute(page: FavoriteScreen(), settings: settings);
      case SearchScreen.routeName:
        return FadeRoute(page: SearchScreen(), settings: settings);
      case ProductScreen.routeName:
        return FadeRoute(page: ProductScreen(), settings: settings);
      case WalletScreen.routeName:
        return FadeRoute(page: WalletScreen(), settings: settings);
      case ProductDetailsScreen.routeName:
        if (args is ProductDetailsScreenParam)
          return FadeRoute(
            page: ProductDetailsScreen(
              productDetailsScreenParam: args,
            ),
            settings: settings,
          );
        return _errorRoute();
      case PaymentScreen.routeName:
        if (args is PAymentScreenParam)
          return FadeRoute(
            page: PaymentScreen(
              param: args,
            ),
            settings: settings,
          );
        return _errorRoute();
      case CheckoutDoneScreen.routeName:
        if (args is bool)
          return FadeRoute(
            page: CheckoutDoneScreen(
              paymentSucceeded: args,
            ),
            settings: settings,
          );
        return _errorRoute();
      case ChangePasswordScreen.routeName:
        return FadeRoute(page: ChangePasswordScreen(), settings: settings);
      case ProductsCategoryScreen.routeName:
        if (args is ProductsCategoryParam)
          return FadeRoute(
            page: ProductsCategoryScreen(
              param: args,
            ),
            settings: settings,
          );
        return _errorRoute();
      case EditProfileScreen.routeName:
        if (args is EditProfileParam) {
          return FadeRoute(
            page: EditProfileScreen(
              editProfileParam: args,
            ),
            settings: settings,
          );
        }
        return _errorRoute();
      case ForgotPasswordScreen.routeName:
        return FadeRoute(page: ForgotPasswordScreen(), settings: settings);
      case ResetPasswordScreen.routeName:
        if (args is ResetPasswordScreenParam)
          return FadeRoute(
            page: ResetPasswordScreen(param: args),
            settings: settings,
          );
        return _errorRoute();
      case ChangeEmailScreen.routeName:
        return FadeRoute(
          page: ChangeEmailScreen(),
          settings: settings,
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ROUTE ERROR CHECK THE ROUTE GENERATOR'),
        ),
      );
    });
  }
}
