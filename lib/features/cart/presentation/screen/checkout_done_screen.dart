import 'package:buy_luck/core/common/style/gaps.dart';
import 'package:buy_luck/core/constants/app/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutDoneScreen extends StatelessWidget {
  static const routeName = '/CheckoutDoneScreen';

  final bool paymentSucceeded;

  const CheckoutDoneScreen({
    Key? key,
    required this.paymentSucceeded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "",
          style: TextStyle(
            fontSize: 55.sp,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            this.paymentSucceeded ? IMG_APP_LOGO : IMG_APP_LOGO,
            width: .6.sw,
            height: .6.sw,
          ),
          Gaps.vGap50,
          Align(
            alignment: Alignment.center,
            child: Text(
              this.paymentSucceeded
                  ? 'تمت عملية الدفع بنجاح'
                  : 'فشلت عملية الدفع',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
