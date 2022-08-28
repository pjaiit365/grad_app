import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class ResetTextField extends StatelessWidget {
  final String hintText;
  const ResetTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 55,
      width: size.width * 0.86,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kprimaryLightColor, borderRadius: BorderRadius.circular(12)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
