import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';
import 'package:buy_luck/features/profile/domain/repository/iprofile_repository.dart';
import 'package:buy_luck/features/profile/domain/usecase/get_notifications_usecase.dart';
import 'package:buy_luck/features/profile/domain/usecase/update_profile_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initialProfile());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      updateProfile: (e) => _mapUpdateProfileToState(e),
      getNotifications: (e) => _mapGetNotificationsToState(e),
    );
  }

  Stream<ProfileState> _mapUpdateProfileToState(UpdateProfile event) async* {
    yield ProfileState.loadingProfile();

    var updateProfileUsecase =
        UpdateProfileUsecase(getIt<IProfileRepository>());

    var result = await updateProfileUsecase.call(event.updateProfileParameter!);

    if (result.hasDataOnly) {
      yield ProfileState.successUpdateProfile();
    } else {
      yield ProfileState.errorProfile(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }

  Stream<ProfileState> _mapGetNotificationsToState(
      GetNotifications event) async* {
    yield ProfileState.loadingProfile();

    final getNotificationsUsecase =
        GetNotificationsUsecase(getIt<IProfileRepository>());

    final result = await getNotificationsUsecase.call(NoParams());

    if (result.hasDataOnly) {
      yield ProfileState.successGetNotifications(
          notificationListEntity: result.data);
    } else {
      yield ProfileState.errorProfile(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }
}
