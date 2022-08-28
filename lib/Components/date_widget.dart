import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  bool _selectDate = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: _selectDate
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kprimary.withOpacity(0.9),
              )
            : null,
        child: Column(
          children: <Widget>[
            Text(
              'Mon',
              style: TextStyle(
                color: _selectDate ? Colors.white : Colors.black,
                fontSize: 17,
                fontWeight: _selectDate ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              '10',
              style: TextStyle(
                  color: _selectDate ? Colors.white : Colors.black,
                  fontWeight: _selectDate ? FontWeight.bold : FontWeight.normal,
                  fontSize: 17),
            ),
            Container(
              height: 4.0,
              width: 4.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectDate ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
