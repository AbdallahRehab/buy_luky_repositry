// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  UpdateProfile updateProfile(
      {UpdateProfileParameter? updateProfileParameter}) {
    return UpdateProfile(
      updateProfileParameter: updateProfileParameter,
    );
  }

  GetNotifications getNotifications() {
    return const GetNotifications();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfileParameter? updateProfileParameter)
        updateProfile,
    required TResult Function() getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileParameter? updateProfileParameter)?
        updateProfile,
    TResult Function()? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(GetNotifications value) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $UpdateProfileCopyWith<$Res> {
  factory $UpdateProfileCopyWith(
          UpdateProfile value, $Res Function(UpdateProfile) then) =
      _$UpdateProfileCopyWithImpl<$Res>;
  $Res call({UpdateProfileParameter? updateProfileParameter});
}

/// @nodoc
class _$UpdateProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileCopyWith<$Res> {
  _$UpdateProfileCopyWithImpl(
      UpdateProfile _value, $Res Function(UpdateProfile) _then)
      : super(_value, (v) => _then(v as UpdateProfile));

  @override
  UpdateProfile get _value => super._value as UpdateProfile;

  @override
  $Res call({
    Object? updateProfileParameter = freezed,
  }) {
    return _then(UpdateProfile(
      updateProfileParameter: updateProfileParameter == freezed
          ? _value.updateProfileParameter
          : updateProfileParameter // ignore: cast_nullable_to_non_nullable
              as UpdateProfileParameter?,
    ));
  }
}

/// @nodoc

class _$UpdateProfile implements UpdateProfile {
  const _$UpdateProfile({this.updateProfileParameter});

  @override
  final UpdateProfileParameter? updateProfileParameter;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(updateProfileParameter: $updateProfileParameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateProfile &&
            (identical(other.updateProfileParameter, updateProfileParameter) ||
                const DeepCollectionEquality().equals(
                    other.updateProfileParameter, updateProfileParameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateProfileParameter);

  @JsonKey(ignore: true)
  @override
  $UpdateProfileCopyWith<UpdateProfile> get copyWith =>
      _$UpdateProfileCopyWithImpl<UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfileParameter? updateProfileParameter)
        updateProfile,
    required TResult Function() getNotifications,
  }) {
    return updateProfile(updateProfileParameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileParameter? updateProfileParameter)?
        updateProfile,
    TResult Function()? getNotifications,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(updateProfileParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(GetNotifications value) getNotifications,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements ProfileEvent {
  const factory UpdateProfile(
      {UpdateProfileParameter? updateProfileParameter}) = _$UpdateProfile;

  UpdateProfileParameter? get updateProfileParameter =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileCopyWith<UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsCopyWith<$Res> {
  factory $GetNotificationsCopyWith(
          GetNotifications value, $Res Function(GetNotifications) then) =
      _$GetNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetNotificationsCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $GetNotificationsCopyWith<$Res> {
  _$GetNotificationsCopyWithImpl(
      GetNotifications _value, $Res Function(GetNotifications) _then)
      : super(_value, (v) => _then(v as GetNotifications));

  @override
  GetNotifications get _value => super._value as GetNotifications;
}

/// @nodoc

class _$GetNotifications implements GetNotifications {
  const _$GetNotifications();

  @override
  String toString() {
    return 'ProfileEvent.getNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfileParameter? updateProfileParameter)
        updateProfile,
    required TResult Function() getNotifications,
  }) {
    return getNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfileParameter? updateProfileParameter)?
        updateProfile,
    TResult Function()? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(GetNotifications value) getNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements ProfileEvent {
  const factory GetNotifications() = _$GetNotifications;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  InitialProfile initialProfile() {
    return const InitialProfile();
  }

  LoadingProfile loadingProfile() {
    return const LoadingProfile();
  }

  SuccessUpdateProfile successUpdateProfile() {
    return const SuccessUpdateProfile();
  }

  SuccessGetNotifications successGetNotifications(
      {NotificationListEntity? notificationListEntity}) {
    return SuccessGetNotifications(
      notificationListEntity: notificationListEntity,
    );
  }

  ErrorProfile errorProfile(
      {AppErrors? error, required void Function() callback}) {
    return ErrorProfile(
      error: error,
      callback: callback,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitialProfileCopyWith<$Res> {
  factory $InitialProfileCopyWith(
          InitialProfile value, $Res Function(InitialProfile) then) =
      _$InitialProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProfileCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialProfileCopyWith<$Res> {
  _$InitialProfileCopyWithImpl(
      InitialProfile _value, $Res Function(InitialProfile) _then)
      : super(_value, (v) => _then(v as InitialProfile));

  @override
  InitialProfile get _value => super._value as InitialProfile;
}

/// @nodoc

class _$InitialProfile implements InitialProfile {
  const _$InitialProfile();

  @override
  String toString() {
    return 'ProfileState.initialProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) {
    return initialProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) {
    if (initialProfile != null) {
      return initialProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) {
    return initialProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) {
    if (initialProfile != null) {
      return initialProfile(this);
    }
    return orElse();
  }
}

abstract class InitialProfile implements ProfileState {
  const factory InitialProfile() = _$InitialProfile;
}

/// @nodoc
abstract class $LoadingProfileCopyWith<$Res> {
  factory $LoadingProfileCopyWith(
          LoadingProfile value, $Res Function(LoadingProfile) then) =
      _$LoadingProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadingProfileCopyWith<$Res> {
  _$LoadingProfileCopyWithImpl(
      LoadingProfile _value, $Res Function(LoadingProfile) _then)
      : super(_value, (v) => _then(v as LoadingProfile));

  @override
  LoadingProfile get _value => super._value as LoadingProfile;
}

/// @nodoc

class _$LoadingProfile implements LoadingProfile {
  const _$LoadingProfile();

  @override
  String toString() {
    return 'ProfileState.loadingProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) {
    return loadingProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) {
    return loadingProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile(this);
    }
    return orElse();
  }
}

abstract class LoadingProfile implements ProfileState {
  const factory LoadingProfile() = _$LoadingProfile;
}

/// @nodoc
abstract class $SuccessUpdateProfileCopyWith<$Res> {
  factory $SuccessUpdateProfileCopyWith(SuccessUpdateProfile value,
          $Res Function(SuccessUpdateProfile) then) =
      _$SuccessUpdateProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessUpdateProfileCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $SuccessUpdateProfileCopyWith<$Res> {
  _$SuccessUpdateProfileCopyWithImpl(
      SuccessUpdateProfile _value, $Res Function(SuccessUpdateProfile) _then)
      : super(_value, (v) => _then(v as SuccessUpdateProfile));

  @override
  SuccessUpdateProfile get _value => super._value as SuccessUpdateProfile;
}

/// @nodoc

class _$SuccessUpdateProfile implements SuccessUpdateProfile {
  const _$SuccessUpdateProfile();

  @override
  String toString() {
    return 'ProfileState.successUpdateProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SuccessUpdateProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) {
    return successUpdateProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) {
    if (successUpdateProfile != null) {
      return successUpdateProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) {
    return successUpdateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) {
    if (successUpdateProfile != null) {
      return successUpdateProfile(this);
    }
    return orElse();
  }
}

abstract class SuccessUpdateProfile implements ProfileState {
  const factory SuccessUpdateProfile() = _$SuccessUpdateProfile;
}

/// @nodoc
abstract class $SuccessGetNotificationsCopyWith<$Res> {
  factory $SuccessGetNotificationsCopyWith(SuccessGetNotifications value,
          $Res Function(SuccessGetNotifications) then) =
      _$SuccessGetNotificationsCopyWithImpl<$Res>;
  $Res call({NotificationListEntity? notificationListEntity});
}

/// @nodoc
class _$SuccessGetNotificationsCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $SuccessGetNotificationsCopyWith<$Res> {
  _$SuccessGetNotificationsCopyWithImpl(SuccessGetNotifications _value,
      $Res Function(SuccessGetNotifications) _then)
      : super(_value, (v) => _then(v as SuccessGetNotifications));

  @override
  SuccessGetNotifications get _value => super._value as SuccessGetNotifications;

  @override
  $Res call({
    Object? notificationListEntity = freezed,
  }) {
    return _then(SuccessGetNotifications(
      notificationListEntity: notificationListEntity == freezed
          ? _value.notificationListEntity
          : notificationListEntity // ignore: cast_nullable_to_non_nullable
              as NotificationListEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessGetNotifications implements SuccessGetNotifications {
  const _$SuccessGetNotifications({this.notificationListEntity});

  @override
  final NotificationListEntity? notificationListEntity;

  @override
  String toString() {
    return 'ProfileState.successGetNotifications(notificationListEntity: $notificationListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessGetNotifications &&
            (identical(other.notificationListEntity, notificationListEntity) ||
                const DeepCollectionEquality().equals(
                    other.notificationListEntity, notificationListEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationListEntity);

  @JsonKey(ignore: true)
  @override
  $SuccessGetNotificationsCopyWith<SuccessGetNotifications> get copyWith =>
      _$SuccessGetNotificationsCopyWithImpl<SuccessGetNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) {
    return successGetNotifications(notificationListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) {
    if (successGetNotifications != null) {
      return successGetNotifications(notificationListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) {
    return successGetNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) {
    if (successGetNotifications != null) {
      return successGetNotifications(this);
    }
    return orElse();
  }
}

abstract class SuccessGetNotifications implements ProfileState {
  const factory SuccessGetNotifications(
          {NotificationListEntity? notificationListEntity}) =
      _$SuccessGetNotifications;

  NotificationListEntity? get notificationListEntity =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessGetNotificationsCopyWith<SuccessGetNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorProfileCopyWith<$Res> {
  factory $ErrorProfileCopyWith(
          ErrorProfile value, $Res Function(ErrorProfile) then) =
      _$ErrorProfileCopyWithImpl<$Res>;
  $Res call({AppErrors? error, void Function() callback});

  $AppErrorsCopyWith<$Res>? get error;
}

/// @nodoc
class _$ErrorProfileCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $ErrorProfileCopyWith<$Res> {
  _$ErrorProfileCopyWithImpl(
      ErrorProfile _value, $Res Function(ErrorProfile) _then)
      : super(_value, (v) => _then(v as ErrorProfile));

  @override
  ErrorProfile get _value => super._value as ErrorProfile;

  @override
  $Res call({
    Object? error = freezed,
    Object? callback = freezed,
  }) {
    return _then(ErrorProfile(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppErrors?,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }

  @override
  $AppErrorsCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorsCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorProfile implements ErrorProfile {
  const _$ErrorProfile({this.error, required this.callback});

  @override
  final AppErrors? error;
  @override
  final void Function() callback;

  @override
  String toString() {
    return 'ProfileState.errorProfile(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorProfile &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.callback, callback) ||
                const DeepCollectionEquality()
                    .equals(other.callback, callback)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(callback);

  @JsonKey(ignore: true)
  @override
  $ErrorProfileCopyWith<ErrorProfile> get copyWith =>
      _$ErrorProfileCopyWithImpl<ErrorProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialProfile,
    required TResult Function() loadingProfile,
    required TResult Function() successUpdateProfile,
    required TResult Function(NotificationListEntity? notificationListEntity)
        successGetNotifications,
    required TResult Function(AppErrors? error, void Function() callback)
        errorProfile,
  }) {
    return errorProfile(error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialProfile,
    TResult Function()? loadingProfile,
    TResult Function()? successUpdateProfile,
    TResult Function(NotificationListEntity? notificationListEntity)?
        successGetNotifications,
    TResult Function(AppErrors? error, void Function() callback)? errorProfile,
    required TResult orElse(),
  }) {
    if (errorProfile != null) {
      return errorProfile(error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfile value) initialProfile,
    required TResult Function(LoadingProfile value) loadingProfile,
    required TResult Function(SuccessUpdateProfile value) successUpdateProfile,
    required TResult Function(SuccessGetNotifications value)
        successGetNotifications,
    required TResult Function(ErrorProfile value) errorProfile,
  }) {
    return errorProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfile value)? initialProfile,
    TResult Function(LoadingProfile value)? loadingProfile,
    TResult Function(SuccessUpdateProfile value)? successUpdateProfile,
    TResult Function(SuccessGetNotifications value)? successGetNotifications,
    TResult Function(ErrorProfile value)? errorProfile,
    required TResult orElse(),
  }) {
    if (errorProfile != null) {
      return errorProfile(this);
    }
    return orElse();
  }
}

abstract class ErrorProfile implements ProfileState {
  const factory ErrorProfile(
      {AppErrors? error, required void Function() callback}) = _$ErrorProfile;

  AppErrors? get error => throw _privateConstructorUsedError;
  void Function() get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorProfileCopyWith<ErrorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
