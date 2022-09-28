import 'package:flutter/material.dart';
import 'package:grad_app/Components/dashboard_widget.dart';
import 'package:grad_app/Screens/MyGraduation/my_grad.dart';
import 'package:grad_app/Screens/Photoshoot/photoAlternate.dart';
import 'package:grad_app/Screens/Photoshoot/photoshoot_screen.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';

import '../../../Components/dashboard_header_widget.dart';
import '../../Payment/payment_screen.dart';

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
              children: <Widget>[
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
                                return MyGradScreen();
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
                        dashboardSvgSrc: 'assets/icons/photoshoot.svg',
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
                        dashboardSvgSrc: 'assets/icons/results.svg',
                        dashboardMainText: 'Results',
                        dashboardSubText: 'Check graduating class'),
                    DashboardWidget(
                        dashboardWidgetPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentScreen(),
                              ));
                        },
                        dashboardSvgSrc: 'assets/icons/payment.svg',
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
                        dashboardSvgSrc: 'assets/icons/messages.svg',
                        dashboardMainText: 'Messages',
                        dashboardSubText: 'Text with fellow graduands'),
                    DashboardWidget(
                        dashboardWidgetPress: () {},
                        dashboardSvgSrc: 'assets/icons/money.svg',
                        dashboardMainText: 'Fees',
                        dashboardSubText: 'Check refund or accrued fees'),
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
