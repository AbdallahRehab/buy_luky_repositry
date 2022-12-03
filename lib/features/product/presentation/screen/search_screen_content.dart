import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/product/domain/entity/product_list_entity.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/net/api_url.dart';

class SearchScreenContent extends StatefulWidget {
  final ProductListEntity productListEntity;

  const SearchScreenContent({
    Key? key,
    required this.productListEntity,
  }) : super(key: key);

  @override
  _SearchScreenContentState createState() => _SearchScreenContentState();
}

class _SearchScreenContentState extends State<SearchScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 50.h,
                horizontal: 50.w,
              ),
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final product = widget.productListEntity.data[index];
                return ProductCard(
                  title: product.name,
                  imagePath: API_BASE_IMG + (product.image ?? ''),
                  onTap: () {
                    pushNewScreenWithRouteSettings(
                      context,
                      screen: ProductDetailsScreen(
                        productDetailsScreenParam: ProductDetailsScreenParam(
                          product,
                        ),
                      ),
                      settings: RouteSettings(
                        name: ProductDetailsScreen.routeName,
                      ),
                    );
                  },
                  price: product.priceOfCoupons,
                  totalCoupons: product.numberOfCoupons,
                  availableCoupons:
                      product.numberOfCoupons - product.boughtCoupons,
                  productId: product.id,
                  isFavorite: Provider.of<ProductNotifier>(context)
                      .favorites
                      .contains(product.id),
                  productStatus: product.productStatus,
                  onFavTap: (bool fav) {},
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.57,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: widget.productListEntity.data.length,
            ),
          ),
        ],
      ),
    );
  }
}
