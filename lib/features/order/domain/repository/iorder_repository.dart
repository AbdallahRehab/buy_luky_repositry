import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/repositories/repository.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IOrderRepository extends Repository {
  Future<Result<AppErrors, OrderListEntity>> getAllOrder(NoParams params);
}
