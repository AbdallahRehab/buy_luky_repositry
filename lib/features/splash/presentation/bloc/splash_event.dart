import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.freezed.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initSplashEvent({CancelToken? cancelToken}) =
      InitSplashEvent;
}
