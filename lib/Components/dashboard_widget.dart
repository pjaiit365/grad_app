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
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: dashboardWidgetPress,
      child: Container(
        width: 165,
        height: 165,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xffF7F5FF)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                dashboardSvgSrc,
                height: 55,
              ),
              SizedBox(height: 10),
              Text(
                dashboardMainText,
                style: TextStyle(
                    color: kprimary.withOpacity(0.9),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  dashboardSubText,
                  style: TextStyle(
                      color: kLightColor.withOpacity(0.8),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
