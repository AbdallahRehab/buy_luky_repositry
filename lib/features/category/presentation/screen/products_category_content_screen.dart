import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/net/api_url.dart';

class ProductsCategoryContentScreen extends StatelessWidget {
  final List<ProductEntity> products;

  const ProductsCategoryContentScreen({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (products.length == 0) {
      return Center(
        child: Text("لا يوجد منتجات لهذه الفئة"),
      );
    }
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(50.w),
        children: List.generate(
          products.length,
          (index) => ProductCard(
            title: products[index].name,
            imagePath: API_BASE_IMG + (products[index].image ?? ''),
            onTap: () {
              pushNewScreenWithRouteSettings(
                context,
                screen: ProductDetailsScreen(
                  productDetailsScreenParam: ProductDetailsScreenParam(
                    products[index],
                  ),
                ),
                settings: RouteSettings(
                  name: ProductDetailsScreen.routeName,
                ),
              );
              /*Navigator.of(context).pushNamed(
                ProductDetailsScreen.routeName,
                arguments: ProductDetailsScreenParam(
                  products[index],
                ),
              );*/
            },
            price: products[index].priceOfCoupons,
            totalCoupons: products[index].numberOfCoupons,
            availableCoupons: products[index].numberOfCoupons -
                (products[index].boughtCoupons),
            productId: products[index].id,
            isFavorite: Provider.of<ProductNotifier>(context)
                .favorites
                .contains(products[index].id),
            productStatus: products[index].productStatus,
            onFavTap: (bool fav) {},
          ),
        ),
      ),
    );
  }
}
