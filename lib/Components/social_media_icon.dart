import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialMediaIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kprimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          width: 20,
          height: 20,
          color: kprimary,
        ),
      ),
    );
  }
}
