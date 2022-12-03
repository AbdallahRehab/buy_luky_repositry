import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:buy_luck/core/models/empty_response.dart';
import 'package:buy_luck/features/cart/data/params/charge_body_param.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:buy_luck/features/cart/domain/repository/icart_repository.dart';
import 'package:buy_luck/features/cart/domain/usecase/charge_usecase.dart';
import 'package:buy_luck/features/cart/domain/usecase/checkout_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../di/service_locator.dart';
import '../../domain/entity/generate_payment_entity.dart';
import '../../domain/usecase/generate_payment_usecase.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.cartInitState());

  void charge(ChargeBodyParam param) async {
    emit(CartState.cartLoadingState());

    final result = await ChargeUseCase(getIt<ICartRepository>())(param);

    if (result.hasDataOnly) {
      emit(CartState.chargeLoadedState(response: result.data));
    } else {
      emit(
        CartState.cartErrorState(
          error: result.error,
          callback: () {
            this.charge(param);
          },
        ),
      );
    }
  }

  void checkout(CheckoutBodyParam param) async {
    emit(CartState.cartLoadingState());

    final result = await CheckoutUseCase(getIt<ICartRepository>())(param);

    if (result.hasDataOnly) {
      emit(CartState.checkoutLoadedState(response: result.data));
    } else {
      emit(
        CartState.cartErrorState(
          error: result.error,
          callback: () {
            this.checkout(param);
          },
        ),
      );
    }
  }

  void generatePayment(GeneratePaymentParam param) async {
    emit(CartState.cartLoadingState());

    final result = await GeneratePaymentUseCase(getIt<ICartRepository>())(param);

    if (result.hasDataOnly) {
      emit(CartState.paymentLoaded(response: result.data));
    } else {
      emit(
        CartState.cartErrorState(
          error: result.error,
          callback: () {
            this.generatePayment(param);
          },
        ),
      );
    }
  }
}
