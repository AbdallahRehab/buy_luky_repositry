import 'package:buy_luck/core/constants/app/app_constants.dart';
import 'package:buy_luck/core/ui/error_ui/errors_screens/build_error_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';

class EmptyScreenWidget extends StatelessWidget {
  final String? title, buttonText;
  final Function()? onButtonPressed;

  const EmptyScreenWidget({
    Key? key,
    this.onButtonPressed,
    this.title,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildErrorScreen(
      context: context,
      callback: onButtonPressed,
      imageUrl: AppConstants.ERROR_EMPTY,
      title: title ?? Translation.of(context).emptyScreen,
      buttonContent: buttonText ?? Translation.of(context).retry,
    );
  }
}
