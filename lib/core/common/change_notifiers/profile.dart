import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/presentation/bloc/home_bloc.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

/// Subject behaviours for the profile info that need listening
var availabilityStatus = BehaviorSubject<int>()..add(0);

/// Change notifier for the profile values
class Profile extends ChangeNotifier {
  ProfileEntity? _profileEntity = null;
  bool _hasUnreadNotifications = false;
  ErrorHome? _homeError;

  //CurrencyEntity _defaultCurrency;
  HomeInitEntity? _homeInitEntity = null;

  bool get hasUnreadNotifications => _hasUnreadNotifications;

  set setHasUnreadNotifications(bool value) {
    _hasUnreadNotifications = value;
    notifyListeners();
  }

  HomeInitEntity? get homeInitEntity => _homeInitEntity;

  set setHomeInitEntity(HomeInitEntity? value) {
    _homeInitEntity = value;
    //this._defaultCurrency = _homeInitEntity?.defaultCurrency;
    notifyListeners();
  }

  ErrorHome? get homeError => _homeError;

  set homeError(ErrorHome? value) {
    _homeError = value;
    notifyListeners();
  }

  ProfileEntity? get profileEntity => _profileEntity;

  set profileEntity(ProfileEntity? value) {
    _profileEntity = value;
    notifyListeners();
  }

//CurrencyEntity get defaultCurrency => _defaultCurrency;

// set defaultCurrency(CurrencyEntity value) {
//   _defaultCurrency = value;
//   // notifyListeners();
// }
}
