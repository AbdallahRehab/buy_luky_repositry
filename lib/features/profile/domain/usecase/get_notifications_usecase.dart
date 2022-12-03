import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';
import 'package:buy_luck/features/profile/domain/repository/iprofile_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetNotificationsUsecase
    extends UseCase<NotificationListEntity, NoParams> {
  final IProfileRepository repository;

  GetNotificationsUsecase(this.repository);

  @override
  Future<Result<AppErrors, NotificationListEntity>> call(NoParams params) {
    return repository.getNotifications(params);
  }
}
