part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initialOrder() = InitialOrder;

  const factory OrderState.loadingOrder() = LoadingOrder;

  const factory OrderState.loadedOrders({OrderListEntity? orderListEntity}) =
      LoadedOrders;

  const factory OrderState.errorOrder({
    AppErrors? error,
    required VoidCallback callback,
  }) = ErrorOrder;
}
