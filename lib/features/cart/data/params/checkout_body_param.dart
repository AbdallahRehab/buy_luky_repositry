import 'dart:convert';

import 'package:buy_luck/core/params/base_params.dart';

class CheckoutBodyParam extends BaseParams {
  CheckoutBodyParam({
    required this.checkout,
  });

  final List<CheckoutData> checkout;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    final resMap = <String, dynamic>{};

    resMap.addEntries({"product": {}}.entries);

    for (int i = 0; i < this.checkout.length; i++) {
      // resMap.putIfAbsent(
      //     "product[$i][product_id]", () => this.checkout[i].productId);
      //
      // resMap.putIfAbsent(
      //     "product[$i][quantity]", () => this.checkout[i].quantity);
      resMap["product"].addEntries({"$i":  {}}.entries);
      resMap["product"]["$i"].addEntries({"product_id": this.checkout[i].productId}.entries);
      resMap["product"]["$i"].addEntries({"quantity": this.checkout[i].quantity}.entries);
    }
    print('RRRRRRRRRRRRRRRRRRRRR ${resMap}');
    return resMap;
  }
}

class CheckoutData {
  CheckoutData({
    required this.productId,
    required this.quantity,
  });

  final int productId;
  final int quantity;
}
