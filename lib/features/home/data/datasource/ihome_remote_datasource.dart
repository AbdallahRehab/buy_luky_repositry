import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/home/data/model/check_app_version_updates_model.dart';
import 'package:buy_luck/features/home/data/model/home_init_model.dart';
import 'package:buy_luck/features/home/data/param/check_update_param.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';
import '../model/coupons_model.dart';
import '../param/coupons_params.dart';

abstract class IHomeRemoteDataSource extends RemoteDataSource {
  Future<Either<AppErrors, CheckAppVersionUpdatesMainModel>> checkUpdate(
      CheckAppUpdatesParam param);

  Future<Either<AppErrors, HomeInitModel>> homeInit(NoParams param);
  Future<Either<AppErrors, CouponsModel>> getCoupons(CouponsParams param);
}
