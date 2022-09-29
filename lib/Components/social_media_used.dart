import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMedia extends StatelessWidget {
  final String iconSrc;
  const SocialMedia({
    Key? key,
    required this.iconSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: ElevatedButton(
        onPressed: () {},
        child: SvgPicture.asset(iconSrc, width: 25, height: 25),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 1.0,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          side: BorderSide.none,
        ),
      ),
    );
  }
}
