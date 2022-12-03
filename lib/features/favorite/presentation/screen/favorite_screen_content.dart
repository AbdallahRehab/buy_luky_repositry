import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/favorite/domain/entity/get_favorite_entity.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/net/api_url.dart';

class FavoriteScreenContent extends StatefulWidget {
  final GetFavoriteEntity getFavoriteEntity;

  const FavoriteScreenContent({
    Key? key,
    required this.getFavoriteEntity,
  }) : super(key: key);

  @override
  _FavoriteScreenContentState createState() => _FavoriteScreenContentState();
}

class _FavoriteScreenContentState extends State<FavoriteScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(30),
          ),
          if ((widget.getFavoriteEntity.data.length) > 0)
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.symmetric(
                  vertical: 100.h,
                  horizontal: 50.w,
                ),
                crossAxisCount: 2,
                childAspectRatio: 0.57,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                  widget.getFavoriteEntity.data.length,
                  (index) => ProductCard(
                    title: widget.getFavoriteEntity.data[index].name,
                    imagePath: API_BASE_IMG +
                        (widget.getFavoriteEntity.data[index].image ?? ''),
                    onTap: () {
                      pushNewScreenWithRouteSettings(
                        context,
                        screen: ProductDetailsScreen(
                          productDetailsScreenParam: ProductDetailsScreenParam(
                            widget.getFavoriteEntity.data[index],
                          ),
                        ),
                        settings: RouteSettings(
                          name: ProductDetailsScreen.routeName,
                        ),
                      );
                      /*Navigator.pushNamed(
                        context,
                        ProductDetailsScreen.routeName,
                        arguments: ProductDetailsScreenParam(
                          widget.getFavoriteEntity.data[index],
                        ),
                      );*/
                    },
                    price: widget.getFavoriteEntity.data[index].priceOfCoupons
                        .toDouble(),
                    totalCoupons:
                        widget.getFavoriteEntity.data[index].numberOfCoupons,
                    availableCoupons:
                        widget.getFavoriteEntity.data[index].numberOfCoupons -
                            widget.getFavoriteEntity.data[index].boughtCoupons,
                    productId: widget.getFavoriteEntity.data[index].id,
                    isFavorite: Provider.of<ProductNotifier>(context)
                        .favorites
                        .contains(widget.getFavoriteEntity.data[index].id),
                    productStatus:
                        widget.getFavoriteEntity.data[index].productStatus,
                    onFavTap: (bool fav) {},
                  ),
                ),
              ),
            )
          else
            Center(
              child: Text("المفضلة فارغة"),
            ),
        ],
      ),
    );
  }
}
