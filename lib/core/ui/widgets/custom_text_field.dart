import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final Key textKey;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final FocusNode focusNode;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final BoxConstraints? suffixIconConstraints;
  final TextStyle? suffixStyle;
  final String? suffixText;
  final Widget? prefixIcon;
  final Widget? prefix;
  final BoxConstraints? prefixIconConstraints;
  final TextStyle? prefixStyle;
  final String? prefixText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final String? helperText;
  final int? helperMaxLines;
  final TextStyle? helperStyle;
  final int? maxLength;
  final Color? primaryFieldColor;
  final Color? errorTextColor;
  final Color? textColor;
  final Color? helperTextColor;
  final int? minLines;
  final int? maxLines;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? horizontalMargin;
  final double? radius;
  final double? topContentPadding;
  final bool? showCounter;
  final bool autocorrect;
  final EdgeInsetsGeometry? padding;
  final List<TextInputFormatter>? inputFormatter;
  final Color? fillColor;
  final bool? filled;
  final bool isCollapsed;
  final String? errorText, counterText;
  final int? errorMaxLines;
  final TextStyle? counterStyle;
  final bool enabled, enableSuggestions, enableInteractiveSelection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;
  final InputBorder? border,
      focusedBorder,
      errorBorder,
      disabledBorder,
      enabledBorder,
      focusedErrorBorder;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final bool? showCursor;
  final ToolbarOptions? toolbarOptions;
  final ScrollController? scrollController;
  final EdgeInsets scrollPadding;
  final ScrollPhysics? scrollPhysics;

  const CustomTextField({
    Key? key,
    required this.textKey,
    required this.controller,
    required this.textInputAction,
    required this.keyboardType,
    required this.focusNode,
    this.inputFormatter,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    this.obscureText = false,
    this.helperText,
    this.maxLength,
    this.primaryFieldColor,
    this.textColor,
    this.errorTextColor,
    this.minLines,
    this.maxLines,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.horizontalMargin,
    this.radius,
    this.topContentPadding,
    this.showCounter = true,
    this.padding,
    this.helperTextColor,
    this.fillColor,
    this.filled,
    this.isCollapsed = false,
    this.prefix,
    this.prefixIconConstraints,
    this.prefixStyle,
    this.prefixText,
    this.suffix,
    this.suffixIconConstraints,
    this.suffixStyle,
    this.suffixText,
    this.errorText,
    this.counterText,
    this.hintText,
    this.helperMaxLines,
    this.helperStyle,
    this.labelStyle,
    this.counterStyle,
    this.errorMaxLines,
    this.enabled = true,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.border,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.focusedErrorBorder,
    this.cursorWidth = 2,
    this.cursorHeight,
    this.cursorRadius,
    this.showCursor,
    this.toolbarOptions,
    this.scrollController,
    this.scrollPadding = const EdgeInsets.all(20),
    this.scrollPhysics,
    this.autocorrect = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin == null ? 28 : horizontalMargin!,
      ),
      child: TextFormField(
        key: textKey,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        showCursor: showCursor,
        toolbarOptions: toolbarOptions,
        scrollController: scrollController,
        scrollPadding: scrollPadding,
        scrollPhysics: scrollPhysics,
        autocorrect: autocorrect,
        inputFormatters: inputFormatter,
        cursorColor: this.textColor ?? this.primaryFieldColor,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: this.textColor ??
                  this.primaryFieldColor ??
                  Theme.of(context).textTheme.subtitle1!.color,
              fontWeight: this.fontWeight != null
                  ? this.fontWeight
                  : Theme.of(context).textTheme.subtitle1!.fontWeight,
              fontSize: this.fontSize == null
                  ? Theme.of(context).textTheme.subtitle1!.fontSize
                  : this.fontSize,
            ),
        maxLength: maxLength,
        maxLines: maxLines == null ? 1 : maxLines,
        minLines: minLines == null ? 1 : minLines,
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        focusNode: focusNode,
        enabled: enabled,
        enableSuggestions: enableSuggestions,
        enableInteractiveSelection: enableInteractiveSelection,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
          enabled: enabled,
          errorText: errorText,
          errorMaxLines: errorMaxLines,
          labelText: labelText,
          labelStyle: labelStyle,
          helperText: helperText,
          helperMaxLines: helperMaxLines,
          helperStyle: helperStyle,
          counterText: counterText,
          counterStyle: counterStyle,
          prefixIcon: this.prefixIcon,
          prefix: prefix,
          prefixIconConstraints: prefixIconConstraints,
          prefixStyle: prefixStyle,
          prefixText: prefixText,
          suffixIcon: this.suffixIcon,
          suffix: suffix,
          suffixIconConstraints: suffixIconConstraints,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
          counter: (showCounter ?? false)
              ? SizedBox(
                  height: 0,
                  width: 0,
                )
              : Text(''),
          isDense: false,
          contentPadding: EdgeInsets.only(
              left: 8,
              bottom: 4,
              top: topContentPadding == null ? 4 : topContentPadding!,
              right: 9),
          hintStyle: TextStyle(
            color:
                helperTextColor == null ? this.textColor : this.helperTextColor,
            fontSize: ScreenUtil().setSp(32),
          ),
          hintText: hintText,
          border: border,
          focusedBorder: focusedBorder,
          errorBorder: errorBorder,
          disabledBorder: disabledBorder,
          enabledBorder: enabledBorder,
          focusedErrorBorder: focusedErrorBorder,
          errorStyle: TextStyle(
            color: this.errorTextColor ?? this.textColor,
            fontSize: ScreenUtil().setSp(32),
          ),
          fillColor: fillColor,
          filled: filled,
          isCollapsed: isCollapsed,
        ),
        validator: validator,
        autovalidateMode: AutovalidateMode.disabled,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        obscureText: obscureText,
      ),
    );
  }
}
