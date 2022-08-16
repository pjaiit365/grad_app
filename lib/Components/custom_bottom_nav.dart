import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/enum.dart';

class CustomBottomNav extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  @override
  final Color inActiveIconColor = const Color(0xFFB6B6B6);
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardScreen();
                    },
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.home == selectedMenu
                    ? kprimary
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.explore == selectedMenu
                    ? kprimary
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.photoshoot == selectedMenu
                    ? kprimary
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: MenuState.profile == selectedMenu
                    ? kprimary
                    : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
