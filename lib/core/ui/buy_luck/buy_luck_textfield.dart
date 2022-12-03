import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyLuckTextField extends StatefulWidget {
  final Key textKey;
  final TextEditingController controller;
  final FocusNode focusNode;
  final IconData? icon;
  final double? iconSize;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? hintText;
  final String? labelText;
  final double? height;
  final TextInputAction? textInputAction;
  final Function(String value)? onSubmitted;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? formatter;
  final int? maxLength;
  final TextInputType? textInputType;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? fillColor, borderColor;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final double? radius;

  const BuyLuckTextField({
    Key? key,
    required this.controller,
    required this.textKey,
    required this.focusNode,
    this.icon,
    this.iconSize,
    this.suffixIcon,
    this.obscureText,
    this.hintText,
    this.height,
    this.textInputAction,
    this.onSubmitted,
    this.onChanged,
    this.validator,
    this.formatter,
    this.maxLength,
    this.textInputType,
    this.textAlign,
    this.labelText,
    this.maxLines,
    this.fillColor,
    this.borderColor,
    this.contentPadding,
    this.style,
    this.radius,
    this.hintStyle,
  }) : super(key: key);

  @override
  _BuyLuckTextFieldState createState() => _BuyLuckTextFieldState();
}

class _BuyLuckTextFieldState extends State<BuyLuckTextField> {
  @override
  Widget build(BuildContext context) {
    return _buildTextField(
      focusNode: widget.focusNode,
      textKey: widget.textKey,
      controller: widget.controller,
      height: widget.height,
      suffixIcon: widget.suffixIcon,
      icon: widget.icon,
      formatter: widget.formatter,
      hintText: widget.hintText,
      labelText: widget.labelText,
      iconSize: widget.iconSize,
      maxLength: widget.maxLength,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      textInputAction: widget.textInputAction,
      textInputType: widget.textInputType,
      validator: widget.validator,
      maxLines: widget.maxLines ?? 1,
      fillColor: widget.fillColor ?? Colors.transparent,
      borderColor: widget.borderColor ?? Colors.transparent,
      contentPadding: widget.contentPadding ?? EdgeInsets.all(50.w),
      style: widget.style,
      hintStyle: widget.hintStyle,
      radius: widget.radius,
    );
  }

  Widget _buildTextField({
    IconData? icon,
    double? iconSize,
    Widget? suffixIcon,
    bool? obscureText,
    String? hintText,
    String? labelText,
    double? height,
    required FocusNode focusNode,
    required Key textKey,
    required TextEditingController controller,
    TextInputAction? textInputAction,
    Function(String value)? onSubmitted,
    Function(String value)? onChanged,
    String? Function(String? value)? validator,
    List<TextInputFormatter>? formatter,
    int? maxLength,
    TextInputType? textInputType,
    int? maxLines,
    Color? fillColor,
    Color? borderColor,
    EdgeInsetsGeometry? contentPadding,
    TextStyle? style,
    TextStyle? hintStyle,
    double? radius,
  }) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 50.r),
      borderSide: BorderSide(color: borderColor ?? Colors.transparent),
    );
    return TextFormField(
      key: textKey,
      enableSuggestions: false,
      textAlign: widget.textAlign ?? TextAlign.start,
      style: style ?? TextStyle(fontSize: 50.sp),
      obscureText: obscureText ?? false,
      autocorrect: false,
      onTap: () {
        setState(() {});
      },
      onFieldSubmitted: (value) {
        setState(() {});
        onSubmitted?.call(value);
      },
      onChanged: (value) {
        onChanged?.call(value);
      },
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        errorStyle: TextStyle(
          fontSize: ScreenUtil().setSp(30),
        ),
        suffixIcon: suffixIcon == null ? null : suffixIcon,
        prefixIcon: icon == null ? null : Icon(icon),
        counter: Text(
          '',
          style: TextStyle(fontSize: 0),
        ),
        border: border,
        disabledBorder: border,
        enabledBorder: border,
        errorBorder: border,
        focusedBorder: border,
        focusedErrorBorder: border,
        contentPadding: contentPadding,
        fillColor: fillColor,
        filled: true,
      ),
      focusNode: focusNode,
      textInputAction: textInputAction,
      controller: controller,
      inputFormatters: formatter ?? [],
      maxLength: maxLength,
      keyboardType: textInputType ?? TextInputType.text,
      maxLines: maxLines,
    );
  }
}
