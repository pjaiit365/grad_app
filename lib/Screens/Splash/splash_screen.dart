import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:grad_app/Screens/Welcome/welcome_screen.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/wrapper.dart';

class Splash extends StatefulWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Wrapper()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //to insert the app logo or company logo
          Image.asset(
            'assets/images/knust_logo.png',
            height: 170,
            width: 170,
          ),
          SizedBox(height: 30),
          //to check if the user is using an iOS
          if (Platform.isIOS)
            const CupertinoActivityIndicator(
              radius: 20,
            )
          else
            const CircularProgressIndicator(
              color: Colors.white,
            )
        ],
      )),
    );
  }
}
