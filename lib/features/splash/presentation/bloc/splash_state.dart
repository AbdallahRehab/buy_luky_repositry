import 'dart:ui';

import 'package:buy_luck/features/home/domain/entity/check_app_version_updates_entity.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/user_management/domain/entity/profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;

  const factory SplashState.loading() = Loading;

  const factory SplashState.loaded({
    CheckAppVersionUpdatesEntity? checkAppVersion,
    ProfileEntity? profileEntity,
    HomeInitEntity? homeInitEntity,
    bool? locked,
    String? message,
  }) = Loaded;

  const factory SplashState.needUpdateError({
    required String appLink,
  }) = NeedUpdateError;

  const factory SplashState.splashError({
    AppErrors? error,
    VoidCallback? callback,
  }) = SplashError;
}
