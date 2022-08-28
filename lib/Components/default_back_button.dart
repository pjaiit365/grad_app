import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DefaultBackButton extends StatelessWidget {
  final Color backButtonColor;
  const DefaultBackButton({
    Key? key,
    required this.backButtonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: backButtonColor),
      onPressed: () => Navigator.pop(context),
    );
  }
}
