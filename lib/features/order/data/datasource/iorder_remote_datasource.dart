import 'package:buy_luck/core/datasources/remote_data_source.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/order/data/model/order_list_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/app_errors.dart';

abstract class IOrderRemoteDataSource extends RemoteDataSource {
  Future<Either<AppErrors, OrderListModel>> getAllOrder(NoParams params);
}
