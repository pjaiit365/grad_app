import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/profile_menu.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Screens/About/about_screen.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Login/login_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';
import 'package:grad_app/constants.dart';
import 'package:popup_card/popup_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          svgSrc: 'assets/icons/User Icon.svg',
          menuText: 'My Account',
          press: () {
            Navigator.pushAndRemoveUntil(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context,
                    Animation animation, Animation secondaryAnimation) {
                  return DashboardScreen();
                }, transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return new SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                }),
                (Route route) => false);
          },
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Bell.svg',
          menuText: 'Notifications',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Question mark.svg',
          menuText: 'Help Center',
          press: () {
            Navigator.pushAndRemoveUntil(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context,
                    Animation animation, Animation secondaryAnimation) {
                  return AboutScreen();
                }, transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return new SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                }),
                (Route route) => false);
          },
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Settings.svg',
          menuText: 'Settings',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/User Icon.svg',
          menuText: 'Log Out',
          press: () {
            Navigator.push(
              context,
              DialogRoute(
                context: context,
                builder: (context) => LogOutPopUp(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class LogOutPopUp extends StatelessWidget {
  const LogOutPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: 245,
        width: size.width * 0.81,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Are you sure you want to log out?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              LogOutButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                buttonWidth: 115,
                buttonColor: Color(0xffFF5266),
                buttonText: 'Log Out',
                buttonTextColor: Colors.white,
                elevation: 1.0,
              ),
              SizedBox(height: 15),
              LogOutButton(
                  press: () {
                    Navigator.pop(context);
                  },
                  buttonWidth: 128,
                  elevation: 0.0,
                  buttonText: 'Back',
                  buttonColor: Color(0xffF4F4F6),
                  buttonTextColor: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  final VoidCallback press;
  final double elevation;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttonWidth;
  const LogOutButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.elevation,
    required this.buttonWidth,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: 16,
        ),
      ),
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: elevation,
          shadowColor: Color(0xffFF5266),
          padding: EdgeInsets.symmetric(horizontal: buttonWidth, vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
    );
  }
}
