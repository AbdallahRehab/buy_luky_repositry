import 'package:buy_luck/features/order/domain/entity/order_list_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCardWidget extends StatelessWidget {
  final String imagePath, title, coponNumber, price;
  final Function() onTap;
  final List<OrderCodeEntity> codes;
  const OrderCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.coponNumber,
    required this.onTap,
    required this.price, required this.codes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(30.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.network(
                  imagePath,
                  height: 200.w,
                  width: 200.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 40.w),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      // "عدد الكوبونات $coponNumber × $price",
                      "عدد الكوبونات = $coponNumber ",
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                     ...List.from(
                      codes.map(
                            (e) {
                          return Text(
                           "رقم الكوبون" +" "+e.code,
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
