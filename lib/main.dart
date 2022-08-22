import 'package:flutter/material.dart';
import 'package:grad_app/Screens/About/about_screen.dart';
import 'package:grad_app/Screens/CardPayment/credit_card.dart';
import 'package:grad_app/Screens/Login/login_screen.dart';
import 'package:grad_app/Screens/Payment/success_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';
import 'package:grad_app/Screens/Registration/registration_screen.dart';
import 'package:grad_app/Screens/Splash/splash_screen.dart';
import 'package:grad_app/constants.dart';
import 'Screens/Payment/payment_screen.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'G to G',
      theme: ThemeData(
          primaryColor: kprimary,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Jaapokki'),
      home: ProfileScreen(),
    );
  }
}
