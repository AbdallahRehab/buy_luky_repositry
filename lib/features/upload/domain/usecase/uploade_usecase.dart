import 'package:buy_luck/core/params/base_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/upload/domain/entity/entity.dart';
import 'package:buy_luck/features/upload/domain/repository/iupload_repository.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/app_errors.dart';

class UploadParams extends BaseParams {
  final UpdateProfileParameter parameter;
  final ProgressCallback? onReceiveProgress;
  final ProgressCallback? onSendProgress;

  UploadParams({
    this.onReceiveProgress,
    this.onSendProgress,
    required this.parameter,
  });

  @override
  Map<String, dynamic> toMap() => {};
}

class UploadUseCase extends UseCase<UploadEntity, UploadParams> {
  final IUploadRepository iUploadRepository;

  UploadUseCase(this.iUploadRepository);

  @override
  Future<Result<AppErrors, UploadEntity>> call(UploadParams params) {
    return iUploadRepository.uploadImageFromRepo(
      parameter: params.parameter,
      onReceiveProgress: params.onReceiveProgress ?? (_, __) {},
      onSendProgress: params.onSendProgress ?? (_, __) {},
    );
  }
}
