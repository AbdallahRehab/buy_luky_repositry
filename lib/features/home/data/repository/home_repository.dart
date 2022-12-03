import 'package:buy_luck/core/common/app_config.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/home/data/datasource/ihome_remote_datasource.dart';
import 'package:buy_luck/features/home/data/model/check_app_version_updates_model.dart';
import 'package:buy_luck/features/home/data/model/home_init_model.dart';
import 'package:buy_luck/features/home/data/param/check_update_param.dart';
import 'package:buy_luck/features/home/domain/entity/check_app_version_updates_entity.dart';
import 'package:buy_luck/features/home/domain/entity/coupons_entity.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/repository/ihome_repository.dart';
import 'package:dio/src/cancel_token.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';
import '../model/coupons_model.dart';
import '../param/coupons_params.dart';

@Injectable(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  final IHomeRemoteDataSource _iHomeRemoteDataSource;

  HomeRepository(this._iHomeRemoteDataSource);

  @override
  Future<Result<AppErrors, CheckAppVersionUpdatesEntity>> checkAppUpdate(
      CancelToken? cancelToken) async {
    CheckAppUpdatesParam param = CheckAppUpdatesParam(
        cancelToken: cancelToken,
        deviceType: AppConfig().os!.index,
        oldToken: "",
        newToken: "");
    final remote = await _iHomeRemoteDataSource.checkUpdate(param);
    return execute<CheckAppVersionUpdatesMainModel,
        CheckAppVersionUpdatesEntity>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, HomeInitEntity>> homeInit(NoParams params) async {
    final remote = await _iHomeRemoteDataSource.homeInit(params);
    return execute<HomeInitModel, HomeInitEntity>(remoteResult: remote);
  }

  @override
  Future<Result<AppErrors, CouponsEntity>> getCoupons(CouponsParams params) async{
    final remote = await _iHomeRemoteDataSource.getCoupons(params);
    return execute<CouponsModel, CouponsEntity>(remoteResult: remote);
  }
}
