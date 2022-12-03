import 'package:badges/badges.dart';
import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/cart/presentation/screen/cart_screen.dart';
import 'package:buy_luck/features/favorite/presentation/screen/favorite_screen.dart';
import 'package:buy_luck/features/profile/presentation/screen/profile_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/ui/toast.dart';
import 'home_screen.dart';

final notifyBottomNavIndex = BehaviorSubject<int>();

enum Views {
  HOME,
  FAVORITE,
  BASKET,
  PROFILE,
}

class MainAppScreen extends StatefulWidget {
  static const String routeName = '/MainAppScreen';

  @override
  _MainAppScreenState createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen>
    with SingleTickerProviderStateMixin {
  final CancelToken cancelToken = CancelToken();
  bool isAsyncCall = false;

  /// The last time the user tapped Android's back-button.
  DateTime backButtonPressTime = DateTime.now();
  static const flutterToastDuration = const Duration(seconds: 3);

  // TabController _tabBarController;
  late PersistentTabController _controller;

  // int _index;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 50), () {
      /// Here example if you want to unlock the notifications lock (main screen)
      // if (notificationsLock.isLocked) notificationsLock.release();
    });
    super.initState();
    /*_tabBarController = TabController(
      initialIndex: _index,
      length: 5,
      vsync: this,
    );*/

    _controller = PersistentTabController(
      initialIndex: Views.HOME.index,
    );

    /// activate selected icon
    notifyBottomNavIndex.listen((value) {
      if (!mounted) return;

      _controller.jumpToTab(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: PersistentTabView(
        context,
        controller: _controller,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        // Default is Colors.white.
        // handleAndroidBackButtonPress: true,
        // Default is true.
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true,
        // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,
        // Choose the nav bar style with this property.
        onWillPop: (_) async {
          DateTime currentTime = DateTime.now();
          bool backButtonHasNotBeenPressedOrSnackBarHasBeenClosed =
              currentTime.difference(backButtonPressTime) >
                  flutterToastDuration;
          if (backButtonHasNotBeenPressedOrSnackBarHasBeenClosed) {
            backButtonPressTime = currentTime;
            Toast.show(Translation.of(context).pressTwiceToExit);
            return Future(() => false);
          } else {
            SystemNavigator.pop();

            return Future(() => true);
          }
        },
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      /// home screen
      HomeScreen(),

      /// favorite screen
      FavoriteScreen(),

      /// cart screen
      CartScreen(),

      /// profile
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        inactiveIcon: Icon(Icons.home_outlined),
        title: ("الرئيسية"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        inactiveIcon: Icon(Icons.favorite_outline),
        title: ("المفضلة"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Badge(
          showBadge: Provider.of<ProductNotifier>(context).cartCount() > 0,
          badgeColor: Theme.of(context).primaryColor,
          badgeContent: Text(
            Provider.of<ProductNotifier>(context).cartCount().toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.sp,
            ),
          ),
          child: Icon(Icons.card_giftcard),
        ),
        title: ("السلة"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        inactiveIcon: Icon(Icons.person_outline),
        title: ("ملفي الشخصي"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
