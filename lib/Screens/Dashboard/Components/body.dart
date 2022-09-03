import 'package:flutter/material.dart';
import 'package:grad_app/Components/dashboard_widget.dart';
import 'package:grad_app/Screens/Photoshoot/photoAlternate.dart';
import 'package:grad_app/Screens/Photoshoot/photoshoot_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';

import '../../../Components/dashboard_header_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DashboardHeaderWidget(dashboardName: 'Ebenezer Ayitey'),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 10, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashboardWidget(
                        dashboardWidgetPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProfileScreen();
                              },
                            ),
                          );
                        },
                        dashboardSvgSrc:
                            'assets/icons/graduation_cap_horizontal.svg',
                        dashboardMainText: 'My Graduation',
                        dashboardSubText: 'View Graduation'),
                    DashboardWidget(
                        dashboardWidgetPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoAlternate(),
                              ));
                        },
                        dashboardSvgSrc: 'assets/icons/twitter.svg',
                        dashboardMainText: 'Photoshoot',
                        dashboardSubText: 'Buy photoshoot tickets'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashboardWidget(
                        dashboardWidgetPress: () {},
                        dashboardSvgSrc: 'assets/icons/twitter.svg',
                        dashboardMainText: 'Results',
                        dashboardSubText: 'Check graduating class'),
                    DashboardWidget(
                        dashboardWidgetPress: () {},
                        dashboardSvgSrc: 'assets/icons/twitter.svg',
                        dashboardMainText: 'Payment',
                        dashboardSubText: 'Pay and checkout payment history'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashboardWidget(
                        dashboardWidgetPress: () {},
                        dashboardSvgSrc: 'assets/icons/twitter.svg',
                        dashboardMainText: 'Twitter',
                        dashboardSubText: 'Have fun with twitter'),
                    DashboardWidget(
                        dashboardWidgetPress: () {},
                        dashboardSvgSrc: 'assets/icons/twitter.svg',
                        dashboardMainText: 'Twitter',
                        dashboardSubText: 'Have fun with twitter'),
                  ],
                ),
                SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
