import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/favorite/domain/repository/ifavorite_repository.dart';
import 'package:buy_luck/features/favorite/domain/usecase/get_fav_usecase.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';
import 'package:buy_luck/features/home/domain/usecase/home_init_usecase.dart';
import 'package:buy_luck/features/splash/presentation/bloc/bloc.dart';
import 'package:buy_luck/features/user_management/data/repository/user_management_repository.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:buy_luck/features/user_management/domain/repository/iuser_management_repository.dart';
import 'package:buy_luck/features/user_management/domain/usecase/load_profile_usecase.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../di/service_locator.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield SplashState.loading();

    yield* event.map(
      initSplashEvent: (e) => _handleGetLastVersion(e),
    );
  }

  Stream<SplashState> _handleGetLastVersion(InitSplashEvent event) async* {
    final result = await Future.wait(
      [
        /// Because it needs auth so we will make this condition
        HomeInitUseCase(getIt<IHomeRepository>())(
          NoParams(
            cancelToken: event.cancelToken,
          ),
        ),

        /// Load favorite list
        if (await UserManagementRepository.hasToken)
          GetFavUseCase(getIt<IFavoriteRepository>())(NoParams()),

        /// Because it needs auth so we will make this condition
        if (await UserManagementRepository.hasToken)
          LoadProfileUseCase(getIt<IUserManagementRepository>())(
            NoParams(
              cancelToken: event.cancelToken,
            ),
          ),
      ],
    );

    Map<String, dynamic> response = {};
    try {
      final lockedR = await http.get(
        Uri.parse(
            'https://buy-luck-394a1-default-rtdb.firebaseio.com/locked.json'),
      );

      final json = jsonDecode(lockedR.body);
      response = json;
    } catch (_) {}

    if (!(await UserManagementRepository.hasToken) ||
        !((await UserManagementRepository.isVerify) ?? false)) {
      yield* await _handleNotAuthenticatedRequests(
        result,
        event,
        response,
      );
    } else {
      if (result[0].hasErrorOnly || result[1].hasErrorOnly) {
        // TODO remove condition and yield splash error in else
        /*if (result[1].hasDataOnly) {
          print("loaded home init entity");

          yield SplashState.loaded(
            checkAppVersion: null,
            profileEntity: null,
            homeInitEntity: result[1].data,
          );
        } else {*/

        yield SplashState.splashError(
          error: result[0].hasErrorOnly ? result[0].error : result[1].error,
          callback: () => this.add(event),
        );
        // }
      } else {
        Provider.of<ProductNotifier>(
          getIt<NavigationService>().appContext!,
          listen: false,
        ).favorites = (result[1].data as GetFavoriteEntity)
            .data
            .map((e) => e.id)
            .toList();
        /*if ((result[0].data as CheckAppVersionUpdatesEntity).lastVersion >
            int.parse(appConfig.buildNumber)) {
          yield SplashState.needUpdateError(
              appLink:
                  (result[0].data as CheckAppVersionUpdatesEntity).appLink);
        } else {*/
        // availabilityStatus.add(
        //   (result[1].data as HomeInitEntity).availabilityStatus,
        // );
        yield SplashState.loaded(
          checkAppVersion: null,
          profileEntity: result[2].data as ProfileEntity?,
          homeInitEntity: result[0].data as HomeInitEntity?,
          locked: response['locked'],
          message: response['messageAR'],
        );
        // }
      }
    }
  }

  Stream<SplashState> _handleNotAuthenticatedRequests(
    List<Result<AppErrors, Object>> result,
    InitSplashEvent event,
    Map<String, dynamic> response,
  ) async* {
    if (result[0].hasErrorOnly) {
      yield SplashState.splashError(
        error: result[0].error,
        callback: () => this.add(event),
      );
    } else {
      /*if ((result[0].data as CheckAppVersionUpdatesEntity).lastVersion >
          int.parse(appConfig.buildNumber)) {
        yield SplashState.needUpdateError(
            appLink: (result[0].data as CheckAppVersionUpdatesEntity).appLink);
      } else {*/
      yield SplashState.loaded(
        checkAppVersion: null,
        profileEntity: null,
        homeInitEntity: result[0].data as HomeInitEntity?,
        locked: response['locked'],
        message: response['messageAR'],
      );
      // }
    }
  }
}
