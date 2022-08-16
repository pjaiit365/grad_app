import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/constants.dart';

class ProfileMenu extends StatelessWidget {
  final String svgSrc;
  final String menuText;
  final VoidCallback press;
  const ProfileMenu({
    Key? key,
    required this.svgSrc,
    required this.menuText,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: kBackgroundLight,
        onPressed: press,
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              svgSrc,
              color: kprimary,
              width: 22,
            ),
            SizedBox(width: 25),
            Expanded(
              child: Text(
                menuText,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
