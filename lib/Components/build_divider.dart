import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        height: 1.5,
        color: Color(0xFFD9D9D9),
      ),
    );
  }
}
