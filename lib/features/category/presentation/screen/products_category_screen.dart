import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/category/data/parameter/product_category_param.dart';
import 'package:buy_luck/features/category/presentation/bloc/category_bloc.dart';
import 'package:buy_luck/features/category/presentation/screen/products_category_content_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCategoryScreen extends StatefulWidget {
  static const String routeName = "productsCategoryScreen/";
  final ProductsCategoryParam param;

  const ProductsCategoryScreen({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  _ProductsCategoryScreenState createState() => _ProductsCategoryScreenState();
}

class _ProductsCategoryScreenState extends State<ProductsCategoryScreen> {
  final _categoryBloc = CategoryBloc();

  void initState() {
    super.initState();
    _categoryBloc.add(
      CategoryEvent.getProductsCategory(widget.param),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "المنتجات",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        bloc: _categoryBloc,
        builder: (_, state) {
          return state.map(
            initCategory: (_) => _buildWatingScreen(),
            loadingCategory: (_) => _buildWatingScreen(),
            loadedCategories: (_) => ScreenNotImplementedError(callback: () {}),
            loadedProductsCategory: (s) => _buildContentScreen(s),
            errorCategory: (s) => _buildErrorScreen(s),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _categoryBloc.close();
    super.dispose();
  }

  /// widgets
  Widget _buildWatingScreen() {
    return WaitingWidget();
  }

  Widget _buildErrorScreen(ErrorCategory state) {
    return ErrorScreenWidget(
      error: state.error!,
      callback: state.callback,
    );
  }

  Widget _buildContentScreen(LoadedProductsCategory state) {
    return ProductsCategoryContentScreen(
      products: state.productListEntity!.data,
    );
  }

  /// logic
}
