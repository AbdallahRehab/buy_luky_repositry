import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final String imagePath, title, count;
  final Function() onTap, onDelete;
  final int productId;
  final num price;
  final bool adjustable;

  const CartCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.count,
    required this.onDelete,
    required this.price,
    required this.onTap,
    required this.productId,
    this.adjustable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {}),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.primaryColorLight,
            onPressed: (_) {
              Provider.of<ProductNotifier>(
                context,
                listen: false,
              ).removeProduct(
                productId,
              );
            },
            icon: Icons.cancel,
          ),
        ],
      ),
      child: Stack(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(
                        imagePath,
                        height: 200.w,
                        width: 200.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 40.w),
                    FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //title ?? ""
                        children: [
                          Text(
                            this.title,
                            style: TextStyle(
                                fontSize: 40.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            this.price.toString() + "",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                FittedBox(
                  child: editeCouponsNumber(context),
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
          /*Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }

  Widget editeCouponsNumber(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: this.adjustable
                ? Colors.orange.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: this.adjustable
              ? InkWell(
                  onTap: () {
                    Provider.of<ProductNotifier>(
                      context,
                      listen: false,
                    ).updateQuantity(
                      this.productId,
                      1,
                    );
                  },
                  child: Icon(
                    Icons.add,
                    size: 45.sp,
                  ),
                )
              : SizedBox(
                  child: Icon(
                    Icons.add,
                    size: 45.sp,
                    color: Colors.transparent,
                  ),
                ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.w),
          child: Text(
            this.count,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: this.adjustable
                ? Colors.orange.withOpacity(0.3)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: this.adjustable
              ? InkWell(
                  onTap: () {
                    Provider.of<ProductNotifier>(
                      context,
                      listen: false,
                    ).updateQuantity(
                      this.productId,
                      -1,
                    );
                  },
                  child: FittedBox(
                    child: Icon(
                      Icons.remove,
                      size: 45.sp,
                    ),
                  ),
                )
              : SizedBox(
                  child: Icon(
                    Icons.add,
                    size: 45.sp,
                    color: Colors.transparent,
                  ),
                ),
        ),
      ],
    );
  }
}
