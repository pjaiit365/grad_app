import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/constants.dart';

class DashboardWidget extends StatelessWidget {
  final String dashboardSvgSrc;
  final String dashboardMainText;
  final String dashboardSubText;
  final VoidCallback dashboardWidgetPress;

  const DashboardWidget({
    Key? key,
    required this.dashboardSvgSrc,
    required this.dashboardMainText,
    required this.dashboardSubText,
    required this.dashboardWidgetPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dashboardWidgetPress,
      child: Container(
        width: 165,
        height: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kBackgroundLight),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                dashboardSvgSrc,
                height: 50,
                color: Colors.black54,
              ),
              SizedBox(height: 10),
              Text(
                dashboardMainText,
                style: TextStyle(
                    color: kprimary.withOpacity(0.9),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                softWrap: true,
                dashboardSubText,
                style: TextStyle(
                    color: kLightColor.withOpacity(0.8),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
