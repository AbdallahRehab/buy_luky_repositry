import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/upload/data/model/upload_image.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IUploadRemoteDataSource extends RemoteDataSource {
  Future<Either<AppErrors, UploadModel>> uploadImage({
    required UpdateProfileParameter parameter,
    required ProgressCallback onReceiveProgress,
    required ProgressCallback onSendProgress,
  });
}
