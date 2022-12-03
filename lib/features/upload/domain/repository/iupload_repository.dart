import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/upload/domain/entity/entity.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IUploadRepository extends Repository {
  Future<Result<AppErrors, UploadEntity>> uploadImageFromRepo({
    required UpdateProfileParameter parameter,
    required ProgressCallback onReceiveProgress,
    required ProgressCallback onSendProgress,
  });
}
