import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/core/ui/toast.dart';
import 'package:buy_luck/features/cart/data/params/checkout_body_param.dart';
import 'package:buy_luck/features/cart/presentation/widget/cart_card.dart';
import 'package:buy_luck/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

import '../../../../core/Common/CoreStyle.dart';
import '../cubit/cart_cubit.dart';

class CartPurchaseScreen extends StatefulWidget {
  static const routeName = "CartPurchaseScreen/";

  const CartPurchaseScreen({Key? key}) : super(key: key);

  @override
  _CartPurchaseScreenState createState() => _CartPurchaseScreenState();
}

class _CartPurchaseScreenState extends State<CartPurchaseScreen> {
  /// State management
  final _cartBloc = CartCubit();
  final _homeBloc = HomeBloc();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: BlocListener<CartCubit, CartState>(
        bloc: _cartBloc,
        listener: (context, state) {
          state.map(
            cartInitState: (_) {},
            cartLoadingState: (_) {
              setState(() {
                _isLoading = true;
              });
            },
            chargeLoadedState: (_) {},
            paymentLoaded: (s) {},
            checkoutLoadedState: (s) {
              Provider.of<Profile>(context, listen: false)
                  .profileEntity!
                  .myMoney -= Provider.of<ProductNotifier>(
                context,
                listen: false,
              ).cartPrice;
              Provider.of<ProductNotifier>(context, listen: false).clearCart();
              setState(() {
                _isLoading = false;
              });
              _homeBloc.add(HomeEvent.getHome());
              Toast.show(s.response?.message ?? '',textColor: Colors.white,backgroundColor: Colors.black);
            },
            cartErrorState: (e) {
              setState(() {
                _isLoading = false;
              });
              ErrorViewer.showError(
                  context: context, error: e.error!, callback: e.callback);
            },
          );
        },
        child: ModalProgressHUD(
          inAsyncCall: _isLoading,
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().statusBarHeight,
              ),
              Expanded(
                child: Consumer<ProductNotifier>(
                  builder: (context, value, child) {
                    final _cart = value.cart;

                    if (_cart.length <= 0) {
                      return Center(
                        child: Text("سلة المشتريات فارغة"),
                      );
                    }
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        if (index == _cart.length + 1) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: CommonSizes.MED_LAYOUT_W_GAP.w,
                              vertical: 20,
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text("شراء"),
                              onPressed: () {
                                _cartBloc.checkout(
                                  CheckoutBodyParam(
                                    checkout: _cart
                                        .map(
                                          (e) => CheckoutData(
                                            productId: e.product.id,
                                            quantity: e.count,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                );
                              },
                            ),
                          );
                        } else if (index == (_cart.length)) {
                          return _buildCartDetails();
                        }
                        return Container(
                          height: 350.h,
                          margin: EdgeInsets.only(
                            left: CommonSizes.MED_LAYOUT_W_GAP.w,
                            right: CommonSizes.MED_LAYOUT_W_GAP.w,
                            bottom: CommonSizes.MED_LAYOUT_W_GAP.w,
                          ),
                          child: CartCard(
                            onTap: () {},
                            imagePath: "assets/images/jpg/galaxyA21s.jpg",
                            title: _cart[index].product.name,
                            price: _cart[index].product.priceOfCoupons,
                            count: _cart[index].count.toString(),
                            onDelete: () {
                              Provider.of<ProductNotifier>(
                                context,
                                listen: false,
                              ).removeProduct(_cart[index].product.id);
                            },
                            productId: _cart[index].product.id,
                            adjustable: false,
                          ),
                        );
                      },
                      itemCount: _cart.length + 2,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cartBloc.close();
    _homeBloc.close();
    super.dispose();
  }

  Widget _buildCartDetails() {
    return Container(
      padding: EdgeInsets.all(50.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("السعر", textAlign: TextAlign.start),
              Text(
                "${Provider.of<ProductNotifier>(
                  context,
                  listen: false,
                ).cartPrice}",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الضرائب", textAlign: TextAlign.start),
              Text(
                "30",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          MySeparator(color: Colors.grey),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("السعر الكلي", textAlign: TextAlign.start),
              Text(
                "30",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.end,
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
