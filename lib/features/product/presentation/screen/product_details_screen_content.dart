import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/constants/app/app_constants.dart';
import 'package:buy_luck/core/ui/toast.dart';
import 'package:buy_luck/features/home/presentation/screen/app_main_screen.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:confetti/confetti.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../../../core/navigation/navigation_service.dart';
import '../../../../core/net/api_url.dart';
import '../../../../core/ui/buy_luck/flip_timer.dart';
import '../../../../core/ui/error_ui/error_viewer/error_viewer.dart';
import '../../../../di/service_locator.dart';
import '../../../favorite/presentation/cubit/favorite_cubit.dart';
import '../widget/product_card.dart';
import 'coupons_fortune_wheel.dart';

class ProductDetailsContent extends StatefulWidget {
  final ProductEntity productEntity;

  const ProductDetailsContent({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  _ProductDetailsContentState createState() => _ProductDetailsContentState();
}

class _ProductDetailsContentState extends State<ProductDetailsContent> {
  // final _refreshController = RefreshController();
  final CarouselController _carouselController = CarouselController();
  int totalCoupons = 10;
  int availableCoupons = 2;
  int _buyedCoupuns = 0;
  int _initCoupons = 0;

  late ConfettiController _controllerTopCenter;
  bool isBull = false;

  @override
  void initState() {
    totalCoupons = widget.productEntity.numberOfCoupons;
    availableCoupons = totalCoupons - widget.productEntity.boughtCoupons;
    _buyedCoupuns = Provider.of<ProductNotifier>(
      getIt<NavigationService>().getNavigationKey.currentContext!,
      listen: false,
    ).getCouponsForProduct(
      widget.productEntity.id,
    );
    _initCoupons = _buyedCoupuns;

    if (_buyedCoupuns == 0 && availableCoupons > 0) {
      _buyedCoupuns = 1;
    }

    _controllerTopCenter = ConfettiController();

    if (widget.productEntity.time != null &&
        widget.productEntity.time!.isBefore(DateTime.now()) &&
        widget.productEntity.user_winner != null) _controllerTopCenter.play();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controllerTopCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: CustomSliverDelegate(
            expandedHeight: 1000.h - 65.h,
            minToolbarHeight: 350.h,
            carouselController: _carouselController,
            title: "",
            price: widget.productEntity.priceOfCoupons.toString() + "",
            onCarouselCardTap: (_) {},
            image: API_BASE_IMG + (widget.productEntity.image ?? ''),
            id: widget.productEntity.id,
            productStatus: widget.productEntity.productStatus,
            color: isBull ? Colors.grey.shade400 : Colors.white,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: isBull ? Colors.grey.shade400 : Colors.white,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: CommonSizes.MED_LAYOUT_W_GAP.toDouble(),
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                /// Coupon Name
                Text(
                  widget.productEntity.name,
                  style: TextStyle(color: Colors.grey, fontSize: 50.sp),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (widget.productEntity.user_winner == null &&
                    widget.productEntity.time != null)
                  // FlipTimer(
                  //   duration: widget.productEntity.time?.difference(
                  //     DateTime.now(),
                  //   ),
                  //   height: 90.h,
                  //   fontSize: 25.sp,
                  //
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text('الزمن المتبقي علي السحب',
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                      ),
                      // SizedBox(width: 8),
                      Expanded(
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: SlideCountdownSeparated(
                            duration:
                            widget.productEntity.time?.difference(
                                  DateTime.now(),
                                ) ??
                                Duration(seconds:   5),
                            height: 120.h,
                            // width: 100.w,
                            separatorStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50.sp),
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50.sp,
                                color: Colors.white),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Colors.deepOrangeAccent,
                            ),
                            onDone: () {
                              print("Timer finished");
                              _controllerTopCenter.play();

                              setState(() {
                                isBull = true;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ConfettiWidget(
                      confettiController: _controllerTopCenter,
                      blastDirection: -pi / 1,
                      maxBlastForce: 100,
                      // set a lower max blast force
                      minBlastForce: 2,
                      // set a lower min blast force
                      emissionFrequency: 0.05,
                      numberOfParticles: 50,
                      // a lot of particles at once
                      gravity: 0.5,
                    ),
                  ),
                ),

                isBull
                    ? Container(
                        height: 220,
                        width: 95.w,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                          child: ExamplePage(),
                        ))
                    : SizedBox(),

                if (widget.productEntity.time != null &&
                    widget.productEntity.time!.isBefore(DateTime.now()))
                  Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ConfettiWidget(
                            confettiController: _controllerTopCenter,
                            blastDirection: -pi / 1,
                            maxBlastForce: 100,
                            // set a lower max blast force
                            minBlastForce: 2,
                            // set a lower min blast force
                            emissionFrequency: 0.05,
                            numberOfParticles: 50,
                            // a lot of particles at once
                            gravity: 0.5,
                          ),
                        ),
                      ),

                      // Text("مبروك  ${widget.productEntity.user_winner !=null ?widget.productEntity.user_winner!.name: ""} قسيمتك رقم${widget.productEntity.code_winner ??""} ربحت سوف يتم التواصل معك قريبا",style: TextStyle(color: Colors.red,fontSize: 20),),
                    ],
                  )
                else
                  SizedBox(),

                const SizedBox(
                  height: 10,
                ),

                /// Coupon percentage
                SizedBox(
                  width: 900.w,
                  child: LinearPercentIndicator(
                    lineHeight: 30.w,
                    percent: (this.totalCoupons - this.availableCoupons) /
                        this.totalCoupons,
                    backgroundColor: Colors.grey.shade300,
                    progressColor: Colors.orange[800],
                    leading: Text(
                      "${this.totalCoupons}",
                      style:
                          TextStyle(color: Colors.orange[800], fontSize: 50.sp),
                    ),
                    trailing: Text(
                      "${this.availableCoupons}",
                      style:
                          TextStyle(color: Colors.orange[800], fontSize: 50.sp),
                    ),
                    isRTL: true,
                    animation: true,
                    animationDuration: 300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                /// available Coupons
                if (widget.productEntity.user_winner == null) ...[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "الكوبونات ",
                          style: TextStyle(
                              color: Colors.deepOrangeAccent, fontSize: 60.sp),
                        ),
                        TextSpan(
                          text: "المتوفرة",
                          style: TextStyle(color: Colors.grey, fontSize: 60.sp),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 30.w),
                        child: Text(
                          "شراء عدد الكوبونات : ",
                          style: TextStyle(color: Colors.grey, fontSize: 40.sp),
                        ),
                      ),
                      _buildAddCubons(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (widget.productEntity.about.isNotEmpty) ...[
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 30.w),
                        child: Text(
                          "الوصف :  ",
                          style: TextStyle(color: Colors.grey, fontSize: 40.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 30.w),
                        child: Html(
                          data: widget.productEntity.about,
                          // style: TextStyle(color: Colors.grey, fontSize: 40.sp),
                        ),
                      ),
                    ),
                  ],
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 900.w,
                    height: 120.h,
                    child: ElevatedButton(
                      onPressed:
                          _buyedCoupuns > 0 && _initCoupons != _buyedCoupuns
                              ? () {
                                  Provider.of<ProductNotifier>(
                                    context,
                                    listen: false,
                                  ).addProductToCart(
                                    widget.productEntity,
                                    _buyedCoupuns,
                                  );

                                  notifyBottomNavIndex.add(Views.BASKET.index);
                                  Navigator.popUntil(
                                    context,
                                    (route) => route.isFirst,
                                  );
                                }
                              : null,
                      child: Text(
                        "شراء",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.sp,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "تم السحب",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 55.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Text(
                      //   "التسليم",
                      //   style: TextStyle(
                      //     fontSize: 55.sp,
                      //     fontWeight: FontWeight.w500,
                      //   ),
                      // ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "الفائز هو ${widget.productEntity.user_winner?.name} سوف يتم التواصل معك قريبا",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "الكوبون الفائز: ${widget.productEntity.code_winner}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  /*const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil().screenHeight * 0.5,
                    child: FadeInImage(
                      image: NetworkImage(
                        API_BASE_IMG + widget.productEntity.user_winner.image,
                      ),
                      placeholder: AssetImage(IMG_APP_LOGO),
                      fit: BoxFit.contain,
                    ),
                  ),*/
                  const SizedBox(
                    height: 15,
                  ),
                  Html(
                    data: widget.productEntity.descriptionWinner ?? "",
                  ),
                ],
                const SizedBox(
                  height: 50,
                ),
                // if(widget.productEntity.time != null && widget.productEntity.time!.isAfter(DateTime.now()))
                //   Directionality(
                //     textDirection: TextDirection.ltr,
                //     child: GestureDetector(
                //       onTap: () {
                //         // Navigator.push(
                //         //     context,
                //         //     MaterialPageRoute(
                //         //       builder: (context) => ExamplePage(),
                //         //     ));
                //       },
                //       child: Container(
                //           decoration: BoxDecoration(
                //               color: Colors.deepOrange,
                //               borderRadius: BorderRadius.circular(20)),
                //           child: Center(
                //               child: Column(
                //             children: [
                //               Text(
                //                 "السحب ",
                //                 style: TextStyle(color: Colors.white),
                //               ),
                //               SizedBox(
                //                 height: 15,
                //               ),
                //               TimerCountdown(
                //                 format:
                //                     CountDownTimerFormat.hoursMinutesSeconds,
                //                 timeTextStyle: TextStyle(
                //                     fontSize: 50, color: Colors.white),
                //                 enableDescriptions: false,
                //                 endTime: widget.productEntity.time!,
                //                 // endTime: DateTime.now().add(Duration(seconds: 5)),
                //                 onEnd: () {
                //                   print("Timer finished");
                //                   _controllerTopCenter.play();
                //
                //                   setState(() {
                //
                //                     isBull=true;
                //                   });
                //                 },
                //               ),
                //             ],
                //           ))),
                //     ))
                // else
                //   SizedBox(),

                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        // SliverFillRemaining(
        //   child:  _buildBodyContent(),
        // ),
      ],
    );
  }

  Widget _buildAddCubons() {
    return Container(
        child: Row(
      children: [
        /// plus button
        Container(
          width: 80.w,
          height: 80.h,
          child: ElevatedButton(
            onPressed: () {
              if (_buyedCoupuns < 10) {
                setState(() {
                  _buyedCoupuns++;
                  _buyedCoupuns > availableCoupons
                      ? _buyedCoupuns = availableCoupons
                      : 0;
                });
              } else {
                print('10');
                Toast.show(
                    "الحد الاقصي لعملية الشراء 10 كوبونات في العملية الواحدة",
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 35.sp);
              }
            },
            child: Text(
              "+",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),

        /// coupons number
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.w),
          child: Text(
            _buyedCoupuns.toString(),
            style: TextStyle(color: Colors.black),
          ),
        ),

        ///minus button
        SizedBox(
          width: 80.w,
          height: 80.h,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _buyedCoupuns--;
                _buyedCoupuns < 1
                    ? (_buyedCoupuns < 0
                        ? _buyedCoupuns = 0
                        : _buyedCoupuns = 1)
                    : () {};
              });
            },
            child: Text(
              "-",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double minToolbarHeight;
  final bool hideTitleWhenExpanded;
  final CarouselController carouselController;

  // final List<NewsEntity> latestNews;
  final String title;
  final String price;
  final String? image;
  final int id;
  final Function(int) onCarouselCardTap;
  final ProductStatus productStatus;
  final Color color;

  bool favorite = false;

  CustomSliverDelegate({
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
    required this.minToolbarHeight,
    required this.carouselController,
    //   required this.latestNews,
    required this.title,
    required this.onCarouselCardTap,
    required this.price,
    required this.image,
    required this.id,
    required this.productStatus,
    required this.color,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    // final containerTop = (appBarSize < minExtent ? minExtent : appBarSize) - 70;
    final containerTop = -300.h;
    // print("$shrinkOffset , $minToolbarHeight, $expandedHeight, $appBarSize");
    return Container(
      color: color,
      height: maxExtent,
      child: Stack(
        children: [
          _buildCarousel(context, percent, image ?? ''),
          _buildAppBarTitleAndBackground(context, appBarSize, percent),
          _buildAppBarBackButton(context, appBarSize, percent),
          _buildAppBarFavoriteButton(
              context, appBarSize, percent, id, productStatus),
          _buildRoundedContainer(containerTop),
          //_buildContentColumn(percent),
          Positioned(
            // left: 800.w,
            right: 10.w,
            bottom: 50.w,
            child: Container(
              height: 90,
              width: 350.w,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: AutoSizeText(
                    this.price +
                        ' ' +
                        currency +
                        '\n' +
                        "بما يعادلة من العملة المحلية",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    // maxLines: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBarBackButton(
      BuildContext context, double appBarSize, double percent) {
    return Positioned(
      top: 0,
      child: IgnorePointer(
        ignoring: false,
        child: Padding(
          padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios, color: Theme.of(context).primaryColor,
              //percent > 0.5 ? CoreStyle.newsLightTextColor : Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarFavoriteButton(
    BuildContext context,
    double appBarSize,
    double percent,
    int id,
    ProductStatus productStatus,
  ) {
    return PositionedDirectional(
      top: 0,
      end: 20.w,
      child: Container(
        margin: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: FavoriteWidget(
              opacity: percent, id: id, productStatus: productStatus),
        ),
      ),
    );
  }

  Widget _buildAppBarTitleAndBackground(
      BuildContext context, double appBarSize, double percent) {
    return Positioned(
      top: 0,
      child: IgnorePointer(
        ignoring: true,
        child: Container(
          height: appBarSize < minExtent ? minExtent : appBarSize,
          width: 1.sw,
          color: Theme.of(context).primaryColor.withOpacity(1 - percent),
          padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 60.sp),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedContainer(double containerTop) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: containerTop,
      // bottom:1.0,
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          width: 1.sw,
          height: 400.h,
          // height: 1.sh - ((appBarSize <  minToolbarHeight ? minToolbarHeight :  appBarSize) - 30),
        ),
        Positioned(
          top: 60.h,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 80,
              child: Divider(
                color: Colors.grey.shade300,
                height: 0,
                thickness: 8.w,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildCarousel(BuildContext context, double percent, String image) {
    return Positioned.fill(
      child: InkWell(
        onTap: () {
          pushNewScreen(
            context,
            screen: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(
                  "عرض الصورة",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                elevation: 0.0,
              ),
              body: Center(
                child: PhotoView(
                  imageProvider: NetworkImage(image),
                  backgroundDecoration:
                      BoxDecoration(color: Colors.transparent),
                  minScale: PhotoViewComputedScale.contained * 1,
                  maxScale: 4.0,
                ),
              ),
            ),
          );
        },
        child: Opacity(
          opacity: hideTitleWhenExpanded ? percent : 1.0,
          child: Container(
            color: Colors.deepOrange,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => minToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class FavoriteWidget extends StatefulWidget {
  final double opacity;
  final int id;
  final ProductStatus productStatus;

  const FavoriteWidget({
    Key? key,
    this.opacity = 1.0,
    required this.id,
    required this.productStatus,
  }) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool favorite = false;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      // child: IconButton(
      //   icon: Icon(favorite ? Icons.favorite : Icons.favorite_border,
      //       color: Colors.red
      //       //percent > 0.5 ? CoreStyle.newsLightTextColor : Colors.white,
      //       ),
      //   onPressed: () {
      //     setState(() {
      //       favorite = !favorite;
      //     });
      //   },
      //   color: Colors.red,
      // ),
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
              if (s.id == widget.id)
                return _buildFavButton(
                  waitingId: s.id,
                  isFav: true,
                );
              else
                return _buildFavButton();
            },
            deleteFavLoadedState: (s) {
              if (s.id == widget.id)
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
    );
  }

  Widget _buildFavButton({int? waitingId, bool? isFav}) {
    if (widget.productStatus != ProductStatus.Init) return SizedBox.shrink();

    bool fav = isFav ??
        Provider.of<ProductNotifier>(context).favorites.contains(widget.id);

    if (widget.id == waitingId && isFav == null) {
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
            widget.id,
          );
        } else {
          BlocProvider.of<FavoriteManageCubit>(
            context,
            listen: false,
          ).addProductToFav(
            widget.id,
          );
        }

        setState(() {
          this.isFav = !this.isFav;
        });
        // widget.onFavTap.call(this.isFav);
      },
    );
  }

  void _requestGetFav() {
    BlocProvider.of<FavoriteCubit>(
      context,
      listen: false,
    ).getFavorites(CancelToken());
  }
}
