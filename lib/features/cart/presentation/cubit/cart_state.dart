part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.cartInitState() = CartInitState;

  const factory CartState.cartLoadingState() = CartLoadingState;

  const factory CartState.chargeLoadedState({EmptyResponse? response}) =
      ChargeLoadedState;

  const factory CartState.checkoutLoadedState({EmptyResponse? response}) =
      CheckoutLoadedState;
  const factory CartState.paymentLoaded({GeneratePaymentEntity? response}) =
      PaymentLoaded;

  const factory CartState.cartErrorState({
    AppErrors? error,
    required VoidCallback callback,
  }) = CartErrorState;
}
