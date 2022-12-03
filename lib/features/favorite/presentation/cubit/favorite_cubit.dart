import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/favorite/data/param/add_to_fav_param.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/favorite/domain/repository/ifavorite_repository.dart';
import 'package:buy_luck/features/favorite/domain/usecase/add_to_fav_usecase.dart';
import 'package:buy_luck/features/favorite/domain/usecase/delete_from_fav_usecase.dart';
import 'package:buy_luck/features/favorite/domain/usecase/get_fav_usecase.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'favorite_cubit.freezed.dart';
part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState.favInitState());

  void getFavorites(CancelToken cancelToken) async {
    emit(FavoriteState.favLoadingState());

    final result = await GetFavUseCase(getIt<IFavoriteRepository>())(
      NoParams(
        cancelToken: cancelToken,
      ),
    );

    if (result.hasDataOnly) {
      emit(
        FavoriteState.getFavLoadedState(favEntity: result.data),
      );
    } else {
      emit(
        FavoriteState.favErrorState(
          error: result.error,
          callback: () {
            this.getFavorites(cancelToken);
          },
        ),
      );
    }
  }
}

class FavoriteManageCubit extends Cubit<FavoriteManageState> {
  FavoriteManageCubit() : super(FavoriteManageState.favManageInitState());

  void addProductToFav(int id, {CancelToken? cancelToken}) async {
    emit(FavoriteManageState.favManageLoadingState(id: id));

    final result = await AddToFavUseCase(getIt<IFavoriteRepository>())(
      AddToFavParam(
        productId: id,
        cancelToken: cancelToken,
      ),
    );

    if (result.hasDataOnly) {
      emit(
        FavoriteManageState.addFavLoadedState(id: id),
      );
    } else {
      emit(
        FavoriteManageState.favManageErrorState(
          error: result.error,
          callback: () {
            this.addProductToFav(
              id,
              cancelToken: cancelToken,
            );
          },
        ),
      );
    }
  }

  void deleteProductFromFav(int id, {CancelToken? cancelToken}) async {
    emit(FavoriteManageState.favManageLoadingState(id: id));

    final result = await DeleteFromFavUseCase(getIt<IFavoriteRepository>())(
      AddToFavParam(
        productId: id,
        cancelToken: cancelToken,
      ),
    );

    if (result.hasDataOnly) {
      emit(
        FavoriteManageState.deleteFavLoadedState(id: id),
      );
    } else {
      emit(
        FavoriteManageState.favManageErrorState(
          error: result.error,
          callback: () {
            this.deleteProductFromFav(
              id,
              cancelToken: cancelToken,
            );
          },
        ),
      );
    }
  }
}
