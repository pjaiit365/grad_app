import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/about_menu_item.dart';
import 'package:grad_app/Components/build_divider.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      height: size.height * 0.69,
      width: size.width * 0.85,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Version 0.0.1',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: Color(0xff9ea0a7)),
              ),
            ),
            SizedBox(height: 20),
            AboutMenuItem(
              imgSrc: 'assets/icons/Bell.svg',
              press: () {},
              aboutMenuText: 'Rate the app',
            ),
            buildDivider(),
            AboutMenuItem(
              imgSrc: 'assets/icons/Bell.svg',
              press: () {},
              aboutMenuText: 'Like us on Facebook',
            ),
            buildDivider(),
            AboutMenuItem(
              imgSrc: 'assets/icons/Bell.svg',
              press: () {},
              aboutMenuText: 'Legal',
            ),
            buildDivider(),
            AboutMenuItem(
              imgSrc: 'assets/icons/Bell.svg',
              press: () {},
              aboutMenuText: 'Contact Developer',
            ),
            buildDivider(),
            AboutMenuItem(
              imgSrc: 'assets/icons/Bell.svg',
              press: () {},
              aboutMenuText: 'Rate the app',
            ),
          ],
        ),
      ),
    );
  }
}
