import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DashboardHeaderWidget extends StatelessWidget {
  final String dashboardName;
  const DashboardHeaderWidget({
    Key? key,
    required this.dashboardName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Color(0xfffcfcfc),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'Welcome',
              style: TextStyle(color: kLightColor, fontSize: 30),
            ),
          ),
          Text(
            dashboardName + ',',
            style: TextStyle(color: kprimary, fontSize: 35),
          ),
        ],
      ),
    );
  }
}
