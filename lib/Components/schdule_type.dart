import 'package:flutter/material.dart';

class ScheduleType extends StatelessWidget {
  final VoidCallback press;
  final Color schduleTypeBorderSideColor;
  final Color schduleTypeColor;
  final Color schduleTypeTextColor;
  final String schduleTypeText;
  const ScheduleType({
    Key? key,
    required this.schduleTypeBorderSideColor,
    required this.schduleTypeColor,
    required this.schduleTypeText,
    required this.schduleTypeTextColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: TextButton(
          onPressed: press,
          child: Text(
            schduleTypeText,
            style: TextStyle(
              color: schduleTypeTextColor,
              fontSize: 15,
            ),
          ),
          style: TextButton.styleFrom(
              side: BorderSide(width: 2.0, color: schduleTypeBorderSideColor),
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              backgroundColor: schduleTypeColor)),
    );
  }
}
