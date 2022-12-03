import 'package:flutter/material.dart';

class OrderTitleWidget extends StatelessWidget {
  final String id, price, date;

  const OrderTitleWidget({
    Key? key,
    required this.id,
    required this.price,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        "طلب رقم #$id -- اجمالي الطلب $price -- بتاريخ $date",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
