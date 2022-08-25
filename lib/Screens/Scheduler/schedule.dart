import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/enum.dart';

import '../../Components/schduler_top_row.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.schedule),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _selectDate = true;
  final Color scheduleLightColor = Color(0xffa79abf);

  @override
  Widget build(BuildContext context) {
    //for division between schedules and dates
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            color: kprimary,
            padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 15),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SchdeulerTopRow(scheduleLightColor: scheduleLightColor),
                InkWell(
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
                            color: Colors.orangeAccent,
                          )
                        : null,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Mon',
                          style: TextStyle(
                              color: _selectDate
                                  ? Colors.white
                                  : scheduleLightColor,
                              fontSize: 17),
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                              color: _selectDate
                                  ? Colors.white
                                  : scheduleLightColor,
                              fontSize: 17),
                        ),
                        Container(
                          height: 4.0,
                          width: 4.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _selectDate ? Colors.white : scheduleLightColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
