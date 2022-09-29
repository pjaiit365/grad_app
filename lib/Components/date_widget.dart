import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DateWidget extends StatefulWidget {
  final index;
  const DateWidget({Key? key, this.index}) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  bool _selectDate = false;
  var _days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 4),
        height: 68,
        width: 49,
        decoration: _selectDate
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kprimary.withOpacity(0.9),
              )
            : null,
        child: Column(
          children: <Widget>[
            Text(
              _days[widget.index],
              style: TextStyle(
                color: _selectDate ? Colors.white : Colors.black,
                fontSize: 17,
                fontWeight: _selectDate ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              '${18 + widget.index}',
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
