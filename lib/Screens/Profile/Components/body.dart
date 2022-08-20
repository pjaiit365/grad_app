import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/profile_menu.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';
import 'package:grad_app/constants.dart';

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
          press: () {},
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
            FlatButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => Dialog(
                  child: Container(), //Your buttons here
                ),
              ),
              child: new Text(
                'Logout',
                style: new TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
