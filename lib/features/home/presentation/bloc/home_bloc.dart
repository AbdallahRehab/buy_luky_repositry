import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';
import 'package:buy_luck/features/home/domain/usecase/home_init_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/change_notifiers/coupons_notifier.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../di/service_locator.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initHome());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      getHome: (e) => _mapGetHomeToState(e),
    );
  }

  Stream<HomeState> _mapGetHomeToState(GetHome event) async* {
    Provider.of<Profile>(
            getIt<NavigationService>().getNavigationKey.currentContext!,
            listen: false)
        .setHomeInitEntity = null;

    var result = await HomeInitUseCase(getIt<IHomeRepository>())(NoParams());

    if (result.hasDataOnly) {
      yield HomeState.loadedHome(homeInitEntity: result.data);
      Provider.of<Profile>(
              getIt<NavigationService>().getNavigationKey.currentContext!,
              listen: false)
          .setHomeInitEntity = result.data;
    } else {
      Provider.of<Profile>(
              getIt<NavigationService>().getNavigationKey.currentContext!,
              listen: false)
          .homeError = ErrorHome(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }


  }
}
