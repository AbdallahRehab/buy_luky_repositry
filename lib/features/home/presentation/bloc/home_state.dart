part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initHome() = InitHome;

  const factory HomeState.loadingHome() = LoadingHome;

  const factory HomeState.loadedHome({HomeInitEntity? homeInitEntity}) =
      LoadedHome;

  const factory HomeState.errorHome({
    AppErrors? error,
    required VoidCallback callback,
  }) = ErrorHome;
}
