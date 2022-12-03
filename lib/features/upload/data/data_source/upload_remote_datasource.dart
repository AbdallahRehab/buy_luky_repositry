import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/upload/data/model/upload_image.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';
import 'iupload_remote_datasource.dart';
import 'package:http_parser/http_parser.dart';

@Injectable(as: IUploadRemoteDataSource)
class UploadRemoteDataSource extends IUploadRemoteDataSource {
  @override
  Future<Either<AppErrors, UploadModel>> uploadImage({
    required UpdateProfileParameter parameter,
    required ProgressCallback onReceiveProgress,
    required ProgressCallback onSendProgress,
  }) {
    return requestUploadFile<UploadModel>(
      converter: (json) => UploadModel.fromMap(json),
      mediaType: MediaType('image', 'jpeg'),
      url: API_UPDATE_PROFILE,
      cancelToken: parameter.cancelToken!,
      withAuthentication: true,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      fileKey: 'image',
      filePath: parameter.image!,
      data: parameter.toMap(),
    );
  }
}
