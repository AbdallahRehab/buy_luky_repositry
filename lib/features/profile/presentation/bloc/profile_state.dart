part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialProfile() = InitialProfile;

  const factory ProfileState.loadingProfile() = LoadingProfile;

  const factory ProfileState.successUpdateProfile() = SuccessUpdateProfile;

  const factory ProfileState.successGetNotifications(
          {NotificationListEntity? notificationListEntity}) =
      SuccessGetNotifications;

  const factory ProfileState.errorProfile({
    AppErrors? error,
    required VoidCallback callback,
  }) = ErrorProfile;
}
