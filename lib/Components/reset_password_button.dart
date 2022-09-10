import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class ResetPasswordButton extends StatelessWidget {
  final Color resetButtonColor;
  final Color resetPasswordTextColor;
  final String resetPasswordText;
  final VoidCallback press;
  const ResetPasswordButton({
    Key? key,
    required this.resetPasswordText,
    required this.resetPasswordTextColor,
    required this.press,
    required this.resetButtonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: press,
      child: Text(
        resetPasswordText,
        style: TextStyle(color: resetPasswordTextColor, fontSize: 17),
      ),
      style: TextButton.styleFrom(
        backgroundColor: resetButtonColor,
        elevation: 1.0,
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.27, vertical: 17),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), side: BorderSide.none),
      ),
    );
  }
}
