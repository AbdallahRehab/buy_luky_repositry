import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:buy_luck/features/product/domain/usecase/get_product_details_usecase.dart';
import 'package:buy_luck/features/product/presentation/bloc/product_bloc.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/common/change_notifiers/coupons_notifier.dart';
import '../../domain/entity/winners_list_entity.dart';

class ProductDetailsScreenParam {
  final ProductEntity? productEntity;
  final WinnerProductEntity? winnerProductEntity;
  final int? userId;

  ProductDetailsScreenParam(
    this.productEntity, {
    this.userId,
    this.winnerProductEntity = null,
  });
}

class ProductDetailsScreen extends StatefulWidget {
  static const routeName = "productDetailsScreen/";

  final ProductDetailsScreenParam productDetailsScreenParam;

  const ProductDetailsScreen({
    Key? key,
    required this.productDetailsScreenParam,
  }) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final _productsBloc = ProductBloc();

  @override
  void initState() {
    _productsBloc.add(
      ProductEvent.getProductDetails(
        param: ProductDetailsParam(
          widget.productDetailsScreenParam.winnerProductEntity == null
              ? widget.productDetailsScreenParam.productEntity!.id
              : widget.productDetailsScreenParam.winnerProductEntity!.id,
        ),
      ),
    );

    Provider.of<CouponsNotifier>(context, listen: false).getCouponsFun(
      productId: widget.productDetailsScreenParam.winnerProductEntity == null
          ? widget.productDetailsScreenParam.productEntity!.id.toString()
          : widget.productDetailsScreenParam.winnerProductEntity!.id.toString()
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        bloc: _productsBloc,
        builder: (context, state) {
          return state.map(
            initProduct: (_) => WaitingWidget(),
            loadingProduct: (_) => WaitingWidget(),
            loadedGetProducts: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            productDetailsLoaded: (s) => ProductDetailsContent(
              productEntity: s.product!.toProductEntity,
            ),
            loadedSearchProducts: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            errorProduct: (e) =>
                ErrorScreenWidget(error: e.error!, callback: e.callback),
            getWinnersLoaded: (_) => ScreenNotImplementedError(callback: () {}),
          );
        },
      ),
    );

    // return Scaffold(
    //   body: ProductDetailsContent(
    //     productEntity: widget.productDetailsScreenParam.productEntity,
    //   ),
    // );
  }

  @override
  void dispose() {
    _productsBloc.close();
    super.dispose();
  }
}
