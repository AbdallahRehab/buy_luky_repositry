import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/profile/data/model/notification_list_model.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';
import '../model/privacy_model.dart';
import '../model/terms_model.dart';

abstract class IProfileRemoteDataSource extends RemoteDataSource {
  Future<Either<AppErrors, EmptyResponse>> updateProfile(
      UpdateProfileParameter params);

  Future<Either<AppErrors, NotificationListModel>> getNotifications(
      NoParams params);

  Future<Either<AppErrors, PrivacyModel>> getPrivacy(NoParams param);
  Future<Either<AppErrors, TermsModel>> getTerms(NoParams param);
}
