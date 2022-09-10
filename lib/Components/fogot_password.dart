import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class ForgotPassword extends StatelessWidget {
  final VoidCallback press;
  const ForgotPassword({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 207, top: 8, bottom: 0),
        child: Text(
          'Forgot your password?',
          style: TextStyle(color: kprimary, fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
