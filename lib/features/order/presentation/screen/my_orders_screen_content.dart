import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:buy_luck/features/order/presentation/widget/order_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrdersScreenContent extends StatefulWidget {
  final OrderListEntity orderListEntity;

  const MyOrdersScreenContent({
    Key? key,
    required this.orderListEntity,
  }) : super(key: key);

  @override
  _MyOrdersScreenContentState createState() => _MyOrdersScreenContentState();
}

class _MyOrdersScreenContentState extends State<MyOrdersScreenContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(CommonSizes.MED_LAYOUT_W_GAP),
      ),
      itemBuilder: (context, index) {
        return OrderDetailsWidget(
          orderDataEntity: widget.orderListEntity.data[index],
        );
      },
      itemCount: widget.orderListEntity.data.length,
    );
  }
}
