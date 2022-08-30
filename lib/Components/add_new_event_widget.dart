import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class AddNewEventWidget extends StatelessWidget {
  final ValueChanged onChanged;
  final double newEventWidth;
  final double newEventHeight;
  final String newEventHintText;
  const AddNewEventWidget({
    Key? key,
    required this.newEventWidth,
    required this.newEventHeight,
    required this.newEventHintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        height: newEventHeight,
        width: size.width * newEventWidth,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
            color: kprimaryLightColor, borderRadius: BorderRadius.circular(12)),
        child: Material(
          color: Colors.transparent,
          child: TextField(
            decoration: InputDecoration(
              hintText: newEventHintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}

class AddNewEventWidgetTimer extends StatelessWidget {
  final ValueChanged onChanged;
  final double newEventWidth;
  final double newEventHeight;
  final String newEventHintText;
  const AddNewEventWidgetTimer({
    Key? key,
    required this.newEventWidth,
    required this.newEventHeight,
    required this.newEventHintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        height: newEventHeight,
        width: size.width * newEventWidth,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
            color: kprimaryLightColor, borderRadius: BorderRadius.circular(12)),
        child: Material(
          color: Colors.transparent,
          child: TextField(
            decoration: InputDecoration(
              hintText: newEventHintText,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              icon: Icon(
                Icons.access_time,
                color: kprimary,
              ),
            ),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
