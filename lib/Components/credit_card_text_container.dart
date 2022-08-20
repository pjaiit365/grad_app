import 'package:flutter/material.dart';

class CreditCardTextContainer extends StatelessWidget {
  final Widget child;
  const CreditCardTextContainer({
    Key? key,
    required this.widthSize,
    required this.child,
  }) : super(key: key);

  final double widthSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * widthSize,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          color: Color(0xfff4f4f6)),
      child: child,
    );
  }
}
