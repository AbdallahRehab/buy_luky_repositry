import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imageUrl;
  final bool fromNetwork;

  final Function()? onTap;

  const ProfileImageWidget({
    Key? key,
    required this.imageUrl,
    this.fromNetwork = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildProfileImage1(context);
  }

  Widget _buildProfileImage1(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,

        // borderRadius: BorderRadius.circular(100.r),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          /// image

          this.imageUrl == null
              ? Positioned.fill(
                  child: Container(
                    height: 150.h,
                    width: 150.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,

                      // borderRadius: BorderRadius.circular(100.r),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              : Positioned.fill(
                  child: CircleAvatar(
                    backgroundImage: (fromNetwork
                        ? NetworkImage(this.imageUrl)
                        : FileImage(File(this.imageUrl))) as ImageProvider,
                    backgroundColor: Colors.transparent,
                    radius: 100.r,
                  ),
                ),

          /// foreground
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    this.onTap?.call();
                  },
                  highlightColor: Colors.transparent,
                  child: Icon(Icons.camera_alt_outlined, color: Colors.white70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
