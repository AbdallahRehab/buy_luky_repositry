import 'dart:async';

import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/product/data/params/search_param.dart';
import 'package:buy_luck/features/product/presentation/bloc/product_bloc.dart';
import 'package:buy_luck/features/product/presentation/screen/search_screen_content.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = "searchScreen/";

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  /// Text fields focus nodes
  FocusNode _searchFocusNode = FocusNode();

  /// Text fields keys
  final _searchKey = new GlobalKey<FormFieldState<String>>();

  /// Text fields controllers
  final _searchController = TextEditingController();

  Timer? _searchTimer;
  CancelToken cancelToken = CancelToken();
  final _productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: ScreenUtil().statusBarHeight + 15,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(0),
                  horizontal: ScreenUtil().setWidth(25),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => {Navigator.pop(context)},
                ),
              ),
              Flexible(
                child: TextField(
                  autofocus: true,
                  onChanged: (value) {
                    _searchTimer?.cancel();
                    if (_searchController.text.isEmpty) return;
                    _searchTimer = Timer(Duration(milliseconds: 600), () {
                      if (!cancelToken.isCancelled) cancelToken.cancel();
                      cancelToken = CancelToken();
                      _productBloc.add(
                        ProductEvent.searchProducts(
                          searchParam: SearchParam(
                            name: _searchController.text,
                            cancelToken: cancelToken,
                          ),
                        ),
                      );
                    });
                  },
                  controller: _searchController,
                  style: TextStyle(color: Colors.black),
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 16.0),
                      child: Hero(
                        tag: "Search",
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    hintText:
                        Translation.of(context).searchByYourFavoriteProduct,
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(30),
          ),
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
              bloc: _productBloc,
              builder: (context, state) {
                return state.map(
                  initProduct: (_) => Center(
                    child: Text("لا يوجد نتائج بعد"),
                  ),
                  loadingProduct: (_) => WaitingWidget(),
                  loadedGetProducts: (_) => ScreenNotImplementedError(
                    callback: () {},
                  ),
                  loadedSearchProducts: (s) {
                    if ((s.searchResult?.data.length ?? 0) == 0) {
                      return Center(
                        child: Text(
                            "لا يوجد نتائج باسم ${_searchController.text}"),
                      );
                    } else {
                      return SearchScreenContent(
                        productListEntity: s.searchResult!,
                      );
                    }
                  },
                  errorProduct: (e) =>
                      ErrorScreenWidget(error: e.error!, callback: e.callback),
                  productDetailsLoaded: (_) => ScreenNotImplementedError(
                    callback: () {},
                  ),
                  getWinnersLoaded: (_) => ScreenNotImplementedError(
                    callback: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _productBloc.close();
    super.dispose();
  }
}
