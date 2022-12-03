import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/order/data/datasource/iorder_remote_datasource.dart';
import 'package:buy_luck/features/order/data/model/order_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/enums/http_method.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/net/api_url.dart';

@Injectable(as: IOrderRemoteDataSource)
class OrderRemoteDataSource extends IOrderRemoteDataSource {
  @override
  Future<Either<AppErrors, OrderListModel>> getAllOrder(NoParams params) {
    return request(
      converter: (json) => OrderListModel.fromMap(json),
      method: HttpMethod.GET,
      url: API_GET_ALL_ORDERS,
      withAuthentication: true,
    );
  }
}
