import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/features/upload/domain/entity/entity.dart';
import 'package:buy_luck/features/upload/domain/repository/iupload_repository.dart';
import 'package:buy_luck/features/upload/domain/usecase/uploade_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';

class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  UploadImageBloc() : super(UploadImageInitial());

  @override
  Stream<UploadImageState> mapEventToState(
    UploadImageEvent event,
  ) async* {
    if (event is StartUploadImageEvent) {
      yield UploadImageLoading();
      final result =
          await UploadUseCase(getIt<IUploadRepository>())(event.params);
      if (result.hasDataOnly) {
        yield UploadImageSuccess(data: result.data?.data);
      }
      // Check for errors..
      else if (result.hasErrorOnly) {
        // print('---------------------------:error when upload image:---------------------------');
        if (result.hasErrorOnly) {
          yield UploadImageFailure(
            error: result.error,
            callback: () {
              this.add(event);
            },
          );
        }
      }
    }
  }
}
