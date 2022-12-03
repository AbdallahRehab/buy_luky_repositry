import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/net/api_url.dart';
import 'order_card.dart';
import 'order_title.dart';

class OrderDetailsWidget extends StatelessWidget {
  final OrderDataEntity orderDataEntity;

  const OrderDetailsWidget({
    Key? key,
    required this.orderDataEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderTitleWidget(
          id: this.orderDataEntity.order.id.toString(),
          price: this.orderDataEntity.order.totalPrice.toString(),
          date: DateFormat("dd-MM-yyyy").format(
            this.orderDataEntity.order.createdAt ?? DateTime.now(),
          ),
        ),
        ...List.from(
          this.orderDataEntity.product.map(
            (e) {
              return Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: OrderCardWidget(
                  title: e.proInfo.name,
                  onTap: () {},
                  imagePath:
                  API_BASE_IMG + e.proInfo.image! ,
                          // "assets/images/jpg/galaxyA21s.jpg",
                  coponNumber: (e.codes.length).toString(),
                  codes: e.codes?? [] ,
                  price: e.proInfo.priceOfCoupons.toString(),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
