import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/home/data/param/coupons_params.dart';
import 'package:buy_luck/features/home/domain/entity/check_app_version_updates_entity.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/app_errors.dart';
import '../entity/coupons_entity.dart';

abstract class IHomeRepository extends Repository {
  Future<Result<AppErrors, CheckAppVersionUpdatesEntity>> checkAppUpdate(
      CancelToken? cancelToken);

  Future<Result<AppErrors, HomeInitEntity>> homeInit(NoParams params);
  Future<Result<AppErrors, CouponsEntity>> getCoupons(CouponsParams params);
}
