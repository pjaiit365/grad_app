import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grad_app/Screens/Welcome/Components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO G to G!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg,",
            height: size.height * 0.45,
          )
        ],
      ),
    );
  }
}
