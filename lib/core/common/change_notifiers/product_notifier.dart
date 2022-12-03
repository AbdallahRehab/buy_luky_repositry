import 'package:buy_luck/features/product/domain/entity/product_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

class ProductNotifier extends ChangeNotifier {
  List<CartContent> _cart = [];
  List<int> _favorites = []; // Favorite products ids

  List<CartContent> get cart => _cart;

  /// Cart related
  void addProductToCart(ProductEntity product, int count) {
    for (var item in this._cart) {
      if (item.product.id == product.id) {
        item.count = count;
        return;
      }
    }

    this._cart.add(
          CartContent(
            product,
            count,
          ),
        );
    notifyListeners();
  }

  int getCouponsForProduct(int id) {
    for (var item in this._cart) {
      if (item.product.id == id) {
        return item.count;
      }
    }
    return 0;
  }

  void removeProduct(int id) {
    this._cart.removeWhere((element) => element.product.id == id);
    notifyListeners();
  }

  int cartCount() {
    int count = 0;
    this._cart.forEach(
      (element) {
        count += element.count;
      },
    );
    return count;
  }

  set cart(List<CartContent> value) {
    _cart = value;
    notifyListeners();
  }

  void clearCart() {
    this._cart.clear();
    notifyListeners();
  }

  void updateQuantity(int productId, int updateVal) {
    CartContent? removeIndex;
    this._cart.forEach(
      (element) {
        if (element.product.id == productId) {
          final validCoupons =
              element.product.numberOfCoupons - element.product.boughtCoupons;
          if (element.count == validCoupons && updateVal.sign > 0) {
            return;
          }
          element.count += updateVal;
          if (element.count == 0) {
            removeIndex = element;
          }
        }
      },
    );
    if (removeIndex != null) {
      this._cart.remove(removeIndex);
    }
    notifyListeners();
  }

  num get cartPrice {
    num price = 0;
    this._cart.forEach((element) {
      price += (element.count * element.product.priceOfCoupons);
    });
    return price;
  }

  /// Favorite related
  List<int> get favorites => _favorites;

  set favorites(List<int> value) {
    _favorites = value;
    notifyListeners();
  }

  void addProductToFav(int product) {
    this._favorites.add(product);
    notifyListeners();
  }
}

class CartContent {
  final ProductEntity product;
  int count;

  CartContent(this.product, this.count);
}
