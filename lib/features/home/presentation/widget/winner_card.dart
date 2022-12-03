import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app/app_constants.dart';

class WinnerCard extends StatelessWidget {
  final String imagePath, title, coponNumber,userNameNumber;
  final Function() onTap;

  const WinnerCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.coponNumber,
    required this.onTap, required this.userNameNumber,
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
                child: SizedBox(
                  width: 200.w,
                  height: 200.h,
                  child: FadeInImage(
                    image: NetworkImage(imagePath),
                    placeholder: AssetImage(IMG_APP_LOGO),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 40.w),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: Translation.of(context).number + " "),
                          TextSpan(
                            text: Translation.of(context).coupon,
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 35.sp),
                          ),
                          TextSpan(text: " " + Translation.of(context).winner+" = " ),
                          TextSpan(text:  coponNumber,style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 35.sp),),
                        ],
                      ),
                    ),
                    Text(
                      " اسم العميل " + userNameNumber,

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
