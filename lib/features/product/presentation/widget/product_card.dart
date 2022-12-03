import 'package:auto_size_text/auto_size_text.dart';
import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/features/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/constants/app/app_constants.dart';

enum ProductStatus {
  Init,
  Pending,
  Bought,
  OutOfStock,
}

class ProductCard extends StatefulWidget {
  final String imagePath, title;
  final Function() onTap;
  final num price;
  final int totalCoupons, availableCoupons;
  final bool isFavorite;
  final int productId;
  final Function(bool fav) onFavTap;
  final ProductStatus productStatus;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
    this.price = 0,
    this.totalCoupons = 1,
    this.availableCoupons = 1,
    required this.isFavorite,
    required this.onFavTap,
    required this.productId,
    required this.productStatus,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFav = false;

  @override
  void initState() {
    this.isFav = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            width: 450.w,
            height: 800.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 2, child: _buildImageWithPrice()),
                Flexible(flex: 1, child: _buildTitleAndAvailableCopons()),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.r),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  // if (widget.productStatus == ProductStatus.OutOfStock) return;
                  widget.onTap.call();
                },
              ),
            ),
          ),
        ),
        PositionedDirectional(
          start: 10.r,
          top: 10.r,
          child: BlocConsumer<FavoriteManageCubit, FavoriteManageState>(
            listener: (context, state) {
              state.map(
                favManageInitState: (_) {},
                favManageLoadingState: (s) {},
                addFavLoadedState: (s) {
                  _requestGetFav();
                },
                deleteFavLoadedState: (s) {
                  _requestGetFav();
                },
                favManageErrorState: (e) {
                  ErrorViewer.showError(
                      context: context, error: e.error!, callback: e.callback);
                },
              );
            },
            builder: (context, state) {
              return state.map(
                favManageInitState: (s) => _buildFavButton(),
                favManageLoadingState: (s) => _buildFavButton(waitingId: s.id),
                addFavLoadedState: (s) {
                  if (s.id == widget.productId)
                    return _buildFavButton(
                      waitingId: s.id,
                      isFav: true,
                    );
                  else
                    return _buildFavButton();
                },
                deleteFavLoadedState: (s) {
                  if (s.id == widget.productId)
                    return _buildFavButton(
                      waitingId: s.id,
                      isFav: false,
                    );
                  else
                    return _buildFavButton();
                },
                favManageErrorState: (_) => _buildFavButton(),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFavButton({int? waitingId, bool? isFav}) {
    if (widget.productStatus != ProductStatus.Init) return SizedBox.shrink();

    bool fav = isFav ?? this.isFav;

    if (widget.productId == waitingId && isFav == null) {
      return Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: CoreStyle.primaryTheme)),
        child: const Padding(
          padding: const EdgeInsets.all(10),
          child: const SizedBox(
            height: 20,
            width: 20,
            child: const CircularProgressIndicator(),
          ),
        ),
      );
    }

    return IconButton(
      icon: Icon(
        fav ? Icons.favorite : Icons.favorite_outline,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {
        if (fav) {
          BlocProvider.of<FavoriteManageCubit>(
            context,
            listen: false,
          ).deleteProductFromFav(
            widget.productId,
          );
        } else {
          BlocProvider.of<FavoriteManageCubit>(
            context,
            listen: false,
          ).addProductToFav(
            widget.productId,
          );
        }

        setState(() {
          this.isFav = !this.isFav;
        });
        widget.onFavTap.call(this.isFav);
      },
    );
  }

  Widget _buildImageWithPrice() {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.r),
            child: FadeInImage(
              image: NetworkImage(widget.imagePath),
              placeholder: AssetImage(IMG_APP_LOGO),
              //height: 2000.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (widget.productStatus == ProductStatus.Init)
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
              width: 200.w,
              height: 150.w,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.orange[800],
                borderRadius: BorderRadius.circular(30.r),
              ),
              alignment: Alignment.center,
              child: AutoSizeText(
                "${this.widget.price}\n$currency",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
            ),
          ),
        if (widget.productStatus == ProductStatus.Pending)
          Positioned.fill(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: Colors.white38,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        "في انتظار السحب",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        if (widget.productStatus == ProductStatus.Bought)
          Positioned.fill(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: Colors.white38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Text(
                      "تم البيع",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        if (widget.productStatus == ProductStatus.OutOfStock)
          Positioned.fill(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                color: Colors.white38,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Text(
                        "تم شراء جميع الكوبونات",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.sp
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildTitleAndAvailableCopons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 40.sp,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Flexible(
            child: LinearPercentIndicator(
              percent:
                  (this.widget.totalCoupons - this.widget.availableCoupons) /
                      this.widget.totalCoupons,
              backgroundColor: Colors.grey.shade300,
              progressColor: Colors.orange[800],
              leading: FittedBox(
                child: Text(
                  "${this.widget.totalCoupons}",
                  style: TextStyle(color: Colors.orange[800], fontSize: 40.sp),
                ),
              ),
              trailing: FittedBox(
                child: Text(
                  "${this.widget.availableCoupons==0?this.widget.totalCoupons:this.widget.availableCoupons}",
                  style: TextStyle(color: Colors.orange[800], fontSize: 40.sp),
                ),
              ),
              isRTL: true,
              animation: true,
              animationDuration: 300,
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "الكوبونات ",
                    style: TextStyle(color: Colors.orange[800]),
                  ),
                  TextSpan(text: "المتوفرة"),
                ]),
                style: TextStyle(
                  fontSize: 40.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }

  void _requestGetFav() {
    BlocProvider.of<FavoriteCubit>(
      context,
      listen: false,
    ).getFavorites(CancelToken());
  }
}
