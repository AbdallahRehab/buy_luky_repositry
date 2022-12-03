part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.favInitState() = FavInitState;

  const factory FavoriteState.favLoadingState() = FavLoadingState;

  const factory FavoriteState.getFavLoadedState(
      {GetFavoriteEntity? favEntity}) = GetFavLoadedState;

  const factory FavoriteState.favErrorState({
    AppErrors? error,
    required VoidCallback callback,
  }) = FavErrorState;
}

@freezed
class FavoriteManageState with _$FavoriteManageState {
  const factory FavoriteManageState.favManageInitState() = FavManageInitState;

  const factory FavoriteManageState.favManageLoadingState({required int id}) =
      FavManageLoadingState;

  const factory FavoriteManageState.addFavLoadedState({required int id}) =
      AddFavLoadedState;

  const factory FavoriteManageState.deleteFavLoadedState({required int id}) =
      DeleteFavLoadedState;

  const factory FavoriteManageState.favManageErrorState({
    AppErrors? error,
    required VoidCallback callback,
  }) = FavManageErrorState;
}
