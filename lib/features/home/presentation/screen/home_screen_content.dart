import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/domain/entity/category_entity.dart';
import 'package:buy_luck/features/category/presentation/screen/products_category_screen.dart';
import 'package:buy_luck/features/category/presentation/widget/category_card.dart';
import 'package:buy_luck/features/home/domain/entity/home_init_entity.dart';
import 'package:buy_luck/features/home/domain/entity/product_winner_entity.dart';
import 'package:buy_luck/features/home/presentation/widget/winner_card.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/product_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/search_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/winners_list_screen.dart';
import 'package:buy_luck/features/product/presentation/widget/product_card.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_maps_webservice/places.dart';
import 'package:http/http.dart' as http;
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/change_notifiers/privacy_and_terms_notifier.dart';
import '../../../../core/net/api_url.dart';
import '../../../profile/presentation/screen/notification/notification_screen.dart';

class HomeScreenContent extends StatefulWidget {
  final HomeInitEntity homeInitEntity;

  const HomeScreenContent({
    Key? key,
    required this.homeInitEntity,
  }) : super(key: key);

  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  /// variables
  late HomeInitEntity homeEntity;

  /// state
  @override
  void initState() {
    super.initState();
    homeEntity = widget.homeInitEntity;

    Provider.of<PrivacyAndTermsNotifier>(context, listen: false).getPrivacyFun();
    Provider.of<PrivacyAndTermsNotifier>(context, listen: false).getTermsFun();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchAndCategories(),

            /// space
            SizedBox(height: 100.h),

            _buildLatestProducts(),
            /// space
            SizedBox(height: 100.h),

            _buildProductsWithdrawal(),

            /// space
            SizedBox(height: 100.h),

            _buildLatestWinnders(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// widgets
  Widget _buildSearchAndCategories() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.r),
          bottomRight: Radius.circular(40.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// search and notification
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              right: 30.w,
              top: 40.h,
            ),
            child: _buildSearchAndNotification(),
          ),

          /// space
          SizedBox(height: 40.h),

          /// image
          (widget.homeInitEntity.data.carousel.length) == 0
              ? SizedBox.shrink()
              : CarouselSlider(
                  options: CarouselOptions(
                    height: 550.h,
                    viewportFraction: 0.9,
                  ),
                  items: widget.homeInitEntity.data.carousel.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          onTap: () {
                            /* pushNewScreenWithRouteSettings(
                        context,
                        screen: ProductDetailsScreen(
                          productDetailsScreenParam:
                          ProductDetailsScreenParam(),
                        ),
                        settings: RouteSettings(
                          name: ProductDetailsScreen.routeName,
                        ),
                      );*/
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: 500.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    API_BASE_IMG + (i.image ?? '')),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(50.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

          /// space
          SizedBox(height: 60.h),

          /// categories
          _buildCategories()
        ],
      ),
    );
  }

  Widget _buildCategories() {
    List<CategoryEntity> categories = homeEntity.data.category;
    if (categories.length == 0) {
      return Center(
        child: Text("لا يوجد فئات"),
      );
    }
    return Container(
      height: 300.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          return Padding(
            padding: index != categories.length - 1
                ? EdgeInsetsDirectional.only(end: 65.w)
                : EdgeInsets.zero,
            child: CategoryCard(
              onTap: () {
                pushNewScreenWithRouteSettings(
                  context,
                  screen: ProductsCategoryScreen(
                    param: ProductsCategoryParam(categories[index].id),
                  ),
                  settings: RouteSettings(
                    name: ProductsCategoryScreen.routeName,
                  ),
                );
                /*
                Navigator.pushNamed(
                  context,
                  ProductsCategoryScreen.routeName,
                  arguments: ProductsCategoryParam(categories[index].id),
                );*/
              },
              title: categories[index].name,
              imageUrl: categories[index].image,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchAndNotification() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /// search
        Expanded(child: _buildSearch()),

        /// space
        SizedBox(width: 40.w),

        /// notification icon
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {
              // final places = new GoogleMapsPlaces(
              //     apiKey: "AIzaSyAhFaXO3wJWbV0kdNaKh8N1lRVlzTBNkxk");
              // final url = await places.buildQueryAutocompleteUrl(
              //   input: "Damasc",
              //   language: "en",
              // );
              // // print(response.results[0].name + " " + response.results[0].);
              // print(url);
              // final response = await http.get(Uri.parse(url));
              // print(response.body);

              pushNewScreenWithRouteSettings(
                context,
                screen: NotificationScreen(),
                settings: RouteSettings(name: NotificationScreen.routeName),
              );

            },
            child: Icon(Icons.notifications_none_outlined),
          ),
        ),
      ],
    );
  }

  Widget _buildSearch() {
    return GestureDetector(
      onTap: () {
        pushNewScreenWithRouteSettings(
          context,
          screen: SearchScreen(),
          settings: RouteSettings(
            name: SearchScreen.routeName,
          ),
        );
        // Navigator.pushNamed(context, SearchScreen.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(25.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0, 2),
                blurRadius: 5.0,
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: "Search",
              child: Icon(Icons.search),
            ),
            SizedBox(width: 30.w),
            Text(Translation.of(context).searchByYourFavoriteProduct,
                style: TextStyle(fontSize: 40.sp)),
          ],
        ),
      ),
    );
  }

  Widget _buildLatestProducts() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 50.w,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Translation.of(context).latestProducts,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 45.sp,
                ),
              ),
              _viewAll(onTap: _onViewAllProductTap),
            ],
          ),
          const SizedBox(height: 20),
          _buildProductsGrid()
        ],
      ),
    );
  }

  Widget _buildProductsWithdrawal() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 50.w,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "المنتجات قيد السحب",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 45.sp,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildProductsWithdrawalGrid()
        ],
      ),
    );
  }

  Widget _buildProductsWithdrawalGrid() {
    List<ProductEntity> products = homeEntity.data.productWithdrawal;

    if (products.length == 0) {
      return Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "لا يوجد منتجات جديدة ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "انقر لعرض الجميع",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = _onViewAllProductTap,
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(
          products.length > 8 ? 8 : products.length,
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
            price: products[index].priceOfCoupons.toDouble(),
            totalCoupons: products[index].numberOfCoupons,
            availableCoupons:
                products[index].numberOfCoupons - products[index].boughtCoupons,
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
  Widget _buildProductsGrid() {
    List<ProductEntity> products = homeEntity.data.product;

    if (products.length == 0) {
      return Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "لا يوجد منتجات جديدة ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "انقر لعرض الجميع",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = _onViewAllProductTap,
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(
          products.length > 8 ? 8 : products.length,
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
            price: products[index].priceOfCoupons.toDouble(),
            totalCoupons: products[index].numberOfCoupons,
            availableCoupons:
                products[index].numberOfCoupons - products[index].boughtCoupons,
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

  Widget _viewAll({required Function() onTap}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Text(
          Translation.of(context).viewAll,
          style: TextStyle(
            fontSize: 35.sp,
            decoration: TextDecoration.underline,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildLatestWinnders() {
    List<ProductWinnerEntity> winners = homeEntity.data.winner;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 50.w,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Translation.of(context).latestWinners,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 45.sp,
                ),
              ),
              _viewAll(
                onTap: onViewAllWinnersTap,
              ),
            ],
          ),
          SizedBox(height: 20),

          /// winners list is empty
          if (winners.isEmpty)
            Center(
              child: Text("لا يوجد فائزين"),
            ),
          for (var i = 0; i < winners.length; i++)
            Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: WinnerCard(
                onTap: () {
                  pushNewScreenWithRouteSettings(
                    context,
                    screen: ProductDetailsScreen(
                      productDetailsScreenParam: ProductDetailsScreenParam(
                        winners[i].product,
                        userId: winners[i].productId,
                      ),
                    ),
                    settings: RouteSettings(
                      name: ProductScreen.routeName,
                    ),
                  );
                },
                title: winners[i].name,
                imagePath: (API_BASE_IMG + (winners[i].product.image ?? '')),
                coponNumber: winners[i].codeWinner,
                userNameNumber: winners[i].userWinner!.name ?? "",
              ),
            ),
        ],
      ),
    );
  }

  /// logic
  void _onViewAllProductTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: ProductScreen(),
      settings: RouteSettings(name: ProductScreen.routeName),
    );
    // Navigator.pushNamed(context, ProductScreen.routeName);
  }

  void onViewAllWinnersTap() {
    pushNewScreenWithRouteSettings(
      context,
      screen: WinnersListScreen(),
      settings: RouteSettings(name: WinnersListScreen.routeName),
    );
  }
}
