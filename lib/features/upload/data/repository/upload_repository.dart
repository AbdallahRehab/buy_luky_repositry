import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/upload/data/data_source/iupload_remote_datasource.dart';
import 'package:buy_luck/features/upload/data/model/upload_image.dart';
import 'package:buy_luck/features/upload/domain/entity/entity.dart';
import 'package:buy_luck/features/upload/domain/repository/iupload_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';

@Injectable(as: IUploadRepository)
class UploadRepository extends IUploadRepository {
  final IUploadRemoteDataSource iUploadRemoteDataSource;

  UploadRepository(this.iUploadRemoteDataSource);
  @override
  Future<Result<AppErrors, UploadEntity>> uploadImageFromRepo({
    required UpdateProfileParameter parameter,
    required ProgressCallback onReceiveProgress,
    required ProgressCallback onSendProgress,
  }) async {
    final remote = await iUploadRemoteDataSource.uploadImage(
      parameter: parameter,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
    );
    return execute<UploadModel, UploadEntity>(remoteResult: remote);
  }
}
