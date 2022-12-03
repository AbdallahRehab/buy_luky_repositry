import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/localization/localization_provider.dart';
import 'package:buy_luck/di/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../features/favorite/presentation/cubit/favorite_cubit.dart';
import '../../features/upload/presentation/upload_image_changenotifier.dart';
import '../../features/user_management/presentation/bloc/bloc.dart';
import 'change_notifiers/coupons_notifier.dart';
import 'change_notifiers/logout_notifier.dart';
import 'change_notifiers/privacy_and_terms_notifier.dart';

/// Centralizing all app providers in one class to be easy to adjust and read
class ApplicationProvider {
  static final ApplicationProvider _instance = ApplicationProvider._init();

  factory ApplicationProvider() => _instance;

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [];

  List<SingleChildWidget> dependItems = [
    /// Change notifier provider
    ChangeNotifierProvider.value(
      value: getIt<LocalizationProvider>(),
    ),

    /// Change notifiers
    ChangeNotifierProvider(
      create: (context) => Profile(),
    ),
    ChangeNotifierProvider(
      create: (context) => ProductNotifier(),
    ),

    ChangeNotifierProvider(
      create: (context) => LogoutNotifier(),
    ),

    ChangeNotifierProvider(
      create: (context) => CouponsNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => PrivacyAndTermsNotifier(),
    ),
    ChangeNotifierProvider(
      create: (context) => UploadImageChangeNotifier(),
    ),

    /// Bloc providers
    BlocProvider(
      create: (_) => UserManagementBloc(),
      lazy: true,
    ),
    BlocProvider(
      create: (_) => FavoriteCubit(),
      lazy: true,
    ),
    BlocProvider(
      create: (_) => FavoriteManageCubit(),
      lazy: true,
    ),
  ];

  List<SingleChildWidget> uiChangesItems = [];

  void dispose(BuildContext context) {
    Provider.of<LocalizationProvider>(context).dispose();
  }
}
