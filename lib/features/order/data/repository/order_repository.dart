import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/core/results/result.dart';
import 'package:buy_luck/features/order/data/datasource/iorder_remote_datasource.dart';
import 'package:buy_luck/features/order/data/model/order_list_model.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:buy_luck/features/order/domain/repository/iorder_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_errors.dart';

@Injectable(as: IOrderRepository)
class OrderRepository extends IOrderRepository {
  final IOrderRemoteDataSource remoteDataSource;

  OrderRepository(this.remoteDataSource);
  @override
  Future<Result<AppErrors, OrderListEntity>> getAllOrder(
      NoParams params) async {
    final remoteResult = await remoteDataSource.getAllOrder(params);
    return execute<OrderListModel, OrderListEntity>(remoteResult: remoteResult);
  }
}
