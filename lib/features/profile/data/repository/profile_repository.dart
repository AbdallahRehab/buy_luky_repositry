import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/profile/data/datasource/iprofile_remote_datasource.dart';
import 'package:buy_luck/features/profile/data/model/notification_list_model.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';
import 'package:buy_luck/features/profile/domain/entity/privacy_entity.dart';
import 'package:buy_luck/features/profile/domain/entity/terms_entity.dart';
import 'package:buy_luck/features/profile/domain/repository/iprofile_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';
import '../model/privacy_model.dart';
import '../model/terms_model.dart';

@Injectable(as: IProfileRepository)
class ProfileRepository extends IProfileRepository {
  final IProfileRemoteDataSource remoteDataSource;

  ProfileRepository(this.remoteDataSource);

  @override
  Future<Result<AppErrors, EmptyResponse>> updateProfile(
      UpdateProfileParameter params) async {
    final remote = await remoteDataSource.updateProfile(params);
    return executeForNoEntity(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, NotificationListEntity>> getNotifications(
      NoParams params) async {
    final remoteResult = await remoteDataSource.getNotifications(params);
    return execute<NotificationListModel, NotificationListEntity>(
        remoteResult: remoteResult);
  }

  @override
  Future<Result<AppErrors, PrivacyEntity>> getPrivacy(NoParams params) async{
    final remote = await remoteDataSource.getPrivacy(params);
    return execute<PrivacyModel, PrivacyEntity>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, TermsEntity>> getTerms(NoParams params) async{
    final remote = await remoteDataSource.getTerms(params);
    return execute<TermsModel, TermsEntity>(remoteResult: remote);
  }

}
