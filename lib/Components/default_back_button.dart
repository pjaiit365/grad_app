import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: kprimary),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
