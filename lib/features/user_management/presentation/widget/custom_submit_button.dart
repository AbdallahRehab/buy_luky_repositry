import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    Key? key,
    required this.onPressed,
    this.title,
  }) : super(key: key);

  final Function() onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          primary: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              CommonSizes.BORDER_RADIUS_STANDARD,
            ),
          ),
        ),
        child: Text(
          title ?? "",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
