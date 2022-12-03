import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/order/presentation/bloc/order_bloc.dart';
import 'package:buy_luck/features/order/presentation/screen/my_orders_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyOrdersScreen extends StatefulWidget {
  static const routeName = "MyOrdersScreen/";

  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  final _ordersBloc = OrderBloc();

  @override
  void initState() {
    this._ordersBloc.add(OrderEvent.getAllOrders());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "سجل الطلبات",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: BlocBuilder<OrderBloc, OrderState>(
        bloc: _ordersBloc,
        builder: (context, state) {
          return state.map(
            initialOrder: (e) => WaitingWidget(),
            loadingOrder: (e) => WaitingWidget(),
            loadedOrders: (s) {
              if ((s.orderListEntity?.data.length ?? 0) == 0) {
                return Center(
                  child: Text("لا يوجد طلبات سابقة لعرضها"),
                );
              }
              return MyOrdersScreenContent(
                orderListEntity: s.orderListEntity!,
              );
            },
            errorOrder: (e) => ErrorScreenWidget(
              error: e.error!,
              callback: e.callback,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    this._ordersBloc.close();
    super.dispose();
  }
}
