import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/params/no_params.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:buy_luck/features/order/domain/repository/iorder_repository.dart';
import 'package:buy_luck/features/order/domain/usecase/get_all_orders_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderState.initialOrder());

  @override
  Stream<OrderState> mapEventToState(
    OrderEvent event,
  ) async* {
    yield* event.map(getAllOrders: (e) => _mapGetAllOrdersToState(e));
  }

  Stream<OrderState> _mapGetAllOrdersToState(GetAllOrders event) async* {
    yield OrderState.loadingOrder();

    final getAllOrdersUsecase = GetAllOrdersUsecase(getIt<IOrderRepository>());
    final result = await getAllOrdersUsecase.call(NoParams());

    if (result.hasDataOnly) {
      yield OrderState.loadedOrders(orderListEntity: result.data);
    } else {
      yield OrderState.errorOrder(
        error: result.error,
        callback: () {
          this.add(event);
        },
      );
    }
  }
}
