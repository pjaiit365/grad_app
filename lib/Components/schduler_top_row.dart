import 'package:flutter/material.dart';

class SchdeulerTopRow extends StatelessWidget {
  const SchdeulerTopRow({
    Key? key,
    required this.scheduleLightColor,
  }) : super(key: key);

  final Color scheduleLightColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Daily ',
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
        Text(
          'Meetings',
          style: TextStyle(color: scheduleLightColor, fontSize: 35),
        ),
        Spacer(),
        Text(
          'Jan',
          style: TextStyle(color: Colors.white.withOpacity(0.89), fontSize: 22),
        )
      ],
    );
  }
}
