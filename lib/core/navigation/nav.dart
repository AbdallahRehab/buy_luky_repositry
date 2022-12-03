import 'package:buy_luck/core/navigation/navigation_service.dart';
import 'package:buy_luck/di/service_locator.dart';
import 'package:flutter/material.dart';

/// Class to make navigation calling shorter and faster to use
class Nav {
  static BuildContext? appContext = getIt<NavigationService>().appContext;

  static NavigatorState? _navigatorState =
      getIt<NavigationService>().getNavigationKey.currentState;

  /// Push
  static Future<T?> to<T extends Object?>(
    String routeName, {
    BuildContext? context,
    Object? arguments,
  }) {
    if (context != null) {
      return Navigator.of(context).pushNamed(
        routeName,
        arguments: arguments,
      );
    }
    return _navigatorState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  /// Push replacement
  static Future<T?> off<T extends Object?, TO extends Object?>(
    String routeName, {
    BuildContext? context,
    TO? result,
    Object? arguments,
  }) {
    if (context != null) {
      return Navigator.of(context).pushReplacementNamed(
        routeName,
        result: result,
        arguments: arguments,
      );
    }
    return _navigatorState!.pushReplacementNamed(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  /// Pop
  static void pop<T extends Object?>([BuildContext? context, T? result]) {
    bool canPop = false;

    if (context != null) {
      canPop = Navigator.of(context).canPop();
    } else {
      _navigatorState!.canPop();
    }
    if (canPop) {
      if (context != null) {
        Navigator.of(context).pop(result);
        return;
      }
      if (Navigator.canPop(context ?? Nav.appContext!)) {
        _navigatorState!.pop(result);
      }
    } else {
      throw Exception("Can't go back to the previous screen");
    }
  }

  /// Pop until
  static void popTo(bool Function(Route<dynamic>) predicate,
      {BuildContext? context}) {
    if (context != null) {
      return Navigator.of(context).popUntil(predicate);
    }
    _navigatorState!.popUntil(predicate);
  }
}
