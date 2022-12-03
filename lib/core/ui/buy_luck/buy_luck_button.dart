import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyLuckButton extends StatefulWidget {
  final Function onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final bool? disableShadow;
  final String? image;
  final Color? shadowColor;
  final EdgeInsetsDirectional? padding;
  final double? fontSize;
  final bool isSvg;
  final double? radius;

  const BuyLuckButton(
      {Key? key,
      required this.onPressed,
      this.text,
      this.backgroundColor,
      this.textColor,
      this.disableShadow,
      this.image,
      this.shadowColor,
      this.padding,
      this.fontSize,
      this.isSvg = false,
      this.radius})
      : super(key: key);

  @override
  _BuyLuckButtonState createState() => _BuyLuckButtonState();
}

class _BuyLuckButtonState extends State<BuyLuckButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.onPressed.call();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            widget.backgroundColor ?? Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius ?? 40.r)),
        ),
        minimumSize: MaterialStateProperty.all<Size>(Size(1.0.sw, 0)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            widget.padding ?? EdgeInsets.symmetric(vertical: 40.h)),
        shadowColor: MaterialStateProperty.all<Color>(widget.shadowColor ??
            Theme.of(context).primaryColor.withOpacity(0.2)),
        elevation: MaterialStateProperty.all<double>(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.image != null)
            SizedBox(
              width: 20,
            ),
          if (widget.image != null && !widget.isSvg)
            Image.asset(
              widget.image ?? '',
              fit: BoxFit.contain,
              width: 80.h,
              height: 80.h,
            ),
          if (widget.image != null && widget.isSvg)
            SvgPicture.asset(
              widget.image ?? '',
              fit: BoxFit.contain,
              width: 80.h,
              height: 80.h,
            ),
          Expanded(
            child: Container(
              height: 100.h,
              // padding: EdgeInsetsDirectional.only(end: 80.h),
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  widget.text ?? "",
                  style: TextStyle(
                    color: widget.textColor ?? Colors.white,
                    fontSize: widget.fontSize ?? 50.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          if (widget.image != null)
            SizedBox(
              width: 20 + 80.h,
            ),
        ],
      ),
    );
  }
}
