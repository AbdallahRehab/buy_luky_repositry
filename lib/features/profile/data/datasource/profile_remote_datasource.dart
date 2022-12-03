import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/profile/data/datasource/iprofile_remote_datasource.dart';
import 'package:buy_luck/features/profile/data/model/notification_list_model.dart';
import 'package:buy_luck/features/profile/data/model/privacy_model.dart';
import 'package:buy_luck/features/profile/data/model/terms_model.dart';
import 'package:buy_luck/features/profile/data/parameter/update_profile_parameter.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';

@Injectable(as: IProfileRemoteDataSource)
class ProfileRemoteDataSource extends IProfileRemoteDataSource {
  @override
  Future<Either<AppErrors, EmptyResponse>> updateProfile(
      UpdateProfileParameter params) {
    return request(
      converter: (json) => EmptyResponse.fromMap(json),
      method: HttpMethod.POST,
      url: API_UPDATE_PROFILE,
      withAuthentication: true,
      body: params.toMap(),
    );
  }

  @override
  Future<Either<AppErrors, NotificationListModel>> getNotifications(
      NoParams params) {
    return request(
      converter: (json) => NotificationListModel.fromMap(json),
      method: HttpMethod.GET,
      url: API_GET_NOTIFICATIONS,
      withAuthentication: true,
    );
  }

  @override
  Future<Either<AppErrors, PrivacyModel>> getPrivacy(NoParams param) {
    return request(
      converter: (json) => PrivacyModel.fromJson(json),
      method: HttpMethod.GET,
      url: API_PRIVACY,
      withAuthentication: false,
      cancelToken: param.cancelToken,
    );
  }

  @override
  Future<Either<AppErrors, TermsModel>> getTerms(NoParams param) {
    return request(
      converter: (json) => TermsModel.fromJson(json),
      method: HttpMethod.GET,
      url: API_TERMS,
      withAuthentication: false,
      cancelToken: param.cancelToken,
    );
  }
}
