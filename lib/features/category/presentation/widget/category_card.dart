import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app/app_constants.dart';
import '../../../../core/net/api_url.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final Function() onTap;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150.w,
          height: 300.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// card with image
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.circular(40.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: FadeInImage(
                    image: NetworkImage(API_BASE_IMG + (imageUrl ?? '')),
                    placeholder: AssetImage(IMG_APP_LOGO),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              /// title
              Text(
                title,
                textScaleFactor: 0.9,
                style: TextStyle(
                  fontSize: 35.sp,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.r),
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
