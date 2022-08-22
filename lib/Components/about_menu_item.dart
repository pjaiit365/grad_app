import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutMenuItem extends StatelessWidget {
  final String imgSrc;
  final String aboutMenuText;
  final VoidCallback press;

  const AboutMenuItem({
    Key? key,
    required this.imgSrc,
    required this.aboutMenuText,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              imgSrc,
              color: Color(0xff70737d),
              width: 20,
            ),
            SizedBox(width: 25),
            Expanded(
              child: Text(
                aboutMenuText,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
