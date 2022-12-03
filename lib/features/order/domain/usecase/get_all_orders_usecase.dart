import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/core/usecases/usecase.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:buy_luck/features/order/domain/repository/iorder_repository.dart';

import '../../../../core/errors/app_errors.dart';

class GetAllOrdersUsecase extends UseCase<OrderListEntity, NoParams> {
  final IOrderRepository repository;

  GetAllOrdersUsecase(this.repository);
  @override
  Future<Result<AppErrors, OrderListEntity>> call(NoParams params) {
    return repository.getAllOrder(params);
  }
}
