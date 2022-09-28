import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:grad_app/Screens/Splash/splash_screen.dart';
import 'package:grad_app/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home: const Splash(),
    );
  }
}
