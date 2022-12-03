import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/features/product/presentation/bloc/product_bloc.dart';
import 'package:buy_luck/features/product/presentation/screen/winners_list_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WinnersListScreen extends StatefulWidget {
  static const routeName = "WinnersListScreen/";

  const WinnersListScreen({Key? key}) : super(key: key);

  @override
  _WinnersListScreenState createState() => _WinnersListScreenState();
}

class _WinnersListScreenState extends State<WinnersListScreen> {
  /// variables
  final _productBloc = ProductBloc();

  /// state
  @override
  void initState() {
    super.initState();
    _productBloc.add(ProductEvent.getWinners());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "أحدث الفائزين",
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
            loadedGetProducts: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            errorProduct: (s) => buildErrorScreen(s),
            loadedSearchProducts: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            productDetailsLoaded: (_) => ScreenNotImplementedError(
              callback: () {},
            ),
            getWinnersLoaded: (s) => buildContentScreen(s),
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

  Widget buildContentScreen(GetWinnersLoaded state) {
    return WinnersListScreenContent(
      winners: state.winners?.data ?? [],
    );
  }

  Widget buildErrorScreen(ErrorProduct state) {
    return ErrorScreenWidget(error: state.error!, callback: state.callback);
  }

  /// logic
}
