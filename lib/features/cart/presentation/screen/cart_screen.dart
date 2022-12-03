import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/cart/presentation/screen/payment_method_screen.dart';
import 'package:buy_luck/features/cart/presentation/widget/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
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
                          child: Text("متابعة"),
                          onPressed: () {
                            pushNewScreenWithRouteSettings(
                              context,
                              screen: PaymentMethodScreen(),
                              settings: RouteSettings(
                                name: PaymentMethodScreen.routeName,
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
    );
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
