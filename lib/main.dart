import 'package:flutter/material.dart';
import 'package:grad_app/Screens/Login/login_screen.dart';

import 'package:grad_app/constants.dart';
import 'Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G to G',
      theme: ThemeData(
          primaryColor: kprimary, scaffoldBackgroundColor: Colors.white),
      home: LoginScreen(),
    );
  }
}
