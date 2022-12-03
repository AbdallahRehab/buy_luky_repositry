import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';

import '../../../../core/errors/app_errors.dart';
import '../entity/privacy_entity.dart';
import '../entity/terms_entity.dart';

abstract class IProfileRepository extends Repository {
  Future<Result<AppErrors, EmptyResponse>> updateProfile(
      UpdateProfileParameter params);
  Future<Result<AppErrors, NotificationListEntity>> getNotifications(
      NoParams params);
  Future<Result<AppErrors, PrivacyEntity>> getPrivacy(NoParams params);
  Future<Result<AppErrors, TermsEntity>> getTerms(NoParams params);
}
