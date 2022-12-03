part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.updateProfile(
      {UpdateProfileParameter? updateProfileParameter}) = UpdateProfile;

  const factory ProfileEvent.getNotifications() = GetNotifications;
}
