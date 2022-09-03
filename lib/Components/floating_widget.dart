import 'package:flutter/material.dart';

import '../constants.dart';

class FloatingWidget extends StatelessWidget {
  final VoidCallback screenReturn;
  final IconData floatingIcon;
  const FloatingWidget({
    Key? key,
    required this.floatingIcon,
    required this.screenReturn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 0),
      child: InkWell(
        onTap: screenReturn,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: kprimary, borderRadius: BorderRadius.circular(12)),
          child: Icon(
            floatingIcon,
            color: Colors.white,
            size: 28,
            shadows: [
              Shadow(color: kprimary, offset: Offset(0.3, 0.7), blurRadius: 2.0)
            ],
          ),
        ),
      ),
    );
  }
}
