import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/home/data/datasource/ihome_remote_datasource.dart';
import 'package:buy_luck/features/home/data/model/check_app_version_updates_model.dart';
import 'package:buy_luck/features/home/data/model/coupons_model.dart';
import 'package:buy_luck/features/home/data/model/home_init_model.dart';
import 'package:buy_luck/features/home/data/param/check_update_param.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';
import '../param/coupons_params.dart';

@Injectable(as: IHomeRemoteDataSource)
class HomeRemoteDataSource extends IHomeRemoteDataSource {
  @override
  Future<Either<AppErrors, CheckAppVersionUpdatesMainModel>> checkUpdate(
      CheckAppUpdatesParam param) {
    return request(
        converter: (json) => CheckAppVersionUpdatesMainModel.fromMap(json),
        method: HttpMethod.POST,
        url: API_HOME_CHECK_UPDATE,
        withAuthentication: true,
        queryParameters: param.toMap(),
        cancelToken: param.cancelToken);
  }

  @override
  Future<Either<AppErrors, HomeInitModel>> homeInit(NoParams param) {
    return request(
      converter: (json) => HomeInitModel.fromMap(json),
      method: HttpMethod.GET,
      url: API_HOME_INIT,
      withAuthentication: true,
      cancelToken: param.cancelToken,
    );
  }

  @override
  Future<Either<AppErrors, CouponsModel>> getCoupons(CouponsParams param)  {
    return request(
      converter: (json) => CouponsModel.fromJson(json),
      method: HttpMethod.GET,
      // queryParameters: param.toMap(),
      url: API_COUPONS + "?product_id=${param.productId}",
      withAuthentication: true,
      cancelToken: param.cancelToken,
    );
  }
}
