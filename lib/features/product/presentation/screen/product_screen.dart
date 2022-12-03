import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/features/product/presentation/bloc/product_bloc.dart';
import 'package:buy_luck/features/product/presentation/screen/product_content_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  static const String routeName = "productScreen/";

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  /// variables
  final _productBloc = ProductBloc();

  /// state
  @override
  void initState() {
    super.initState();
    _productBloc.add(ProductEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أحدث المنتجات",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        bloc: _productBloc,
        builder: (_, state) {
          return state.map(
            initProduct: (_) => buildLoading(),
            loadingProduct: (_) => buildLoading(),
            loadedGetProducts: (s) => buildContentScreen(s),
            errorProduct: (s) => buildErrorScreen(s),
            loadedSearchProducts: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            productDetailsLoaded: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            getWinnersLoaded: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _productBloc.close();
    super.dispose();
  }

  /// widget
  Widget buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildContentScreen(LoadedGetProducts state) {
    return ProductContentScreen(
      products: state.productListEntity!.data,
    );
  }

  Widget buildErrorScreen(ErrorProduct state) {
    return ErrorScreenWidget(error: state.error!, callback: state.callback);
  }

  /// logic
}
