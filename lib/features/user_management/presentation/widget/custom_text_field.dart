import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    this.icon,
    this.suffixIcon,
    this.obscureText,
    this.hintText,
    required this.focusNode,
    required this.textKey,
    required this.controller,
    this.textInputAction,
    this.onSubmitted,
    this.onChanged,
    this.validator,
    this.formatter,
    this.maxLength,
    this.textInputType,
  }) : super(key: key);

  final FocusNode focusNode;
  final Key textKey;
  final TextEditingController controller;
  final IconData? icon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? hintText;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final TextInputType? textInputType;
  final Function(String value)? onSubmitted;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? formatter;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.textKey,
      obscureText: widget.obscureText ?? false,
      onTap: () {
        setState(() {});
      },
      onFieldSubmitted: (value) {
        setState(() {});
        widget.onSubmitted?.call(value);
      },
      onChanged: (value) {
        widget.onChanged?.call(value);
      },
      validator: widget.validator,
      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        hintText: widget.hintText,
        border: _getOutlineBorder(),
        disabledBorder: _getOutlineBorder(),
        enabledBorder: _getOutlineBorder(),
        focusedBorder: _getOutlineBorder(),
        errorBorder: _getOutlineBorder(color: Colors.redAccent),
        focusedErrorBorder: _getOutlineBorder(color: Colors.red),
        errorStyle: TextStyle(
          fontSize: ScreenUtil().setSp(25),
        ),
        suffixIcon: widget.suffixIcon,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(widget.icon),
            SizedBox(
              height: ScreenUtil().setHeight(80),
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
          ],
        ),
        counter: Text(''),
      ),
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      controller: widget.controller,
      inputFormatters: widget.formatter ?? [],
      maxLength: widget.maxLength,
      keyboardType: widget.textInputType ?? TextInputType.text,
    );
  }

  OutlineInputBorder _getOutlineBorder({Color color = Colors.grey}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.all(Radius.circular(15)));
  }
}
