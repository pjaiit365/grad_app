import 'package:flutter/material.dart';
import 'package:grad_app/Components/date_widget.dart';
import 'package:grad_app/Components/schduler_top_row.dart';
import 'package:grad_app/Components/scheduler_item.dart';
import 'package:grad_app/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List reminderEvent = [
    'Room Chores',
    'Cleaning, washing, ironing, etc.',
    schedulerGreenMain,
    schedulerGreenSub,
    schedulerGreenMainText,
    schedulerGreenSubText,
    '09:00',
    '10:00',
  ];

  @override
  Widget build(BuildContext context) {
    //for division between schedules and dates
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          decoration: BoxDecoration(
              color: Color(0xfffcfcfc),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SchdeulerTopRow(scheduleLightColor: scheduleLightColor),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  growable: true,
                  7,
                  (index) => DateWidget(index: index),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return SchedulerItem(
                mainSchedulerText: reminderEvent[index][0],
                subSchedulerText: reminderEvent[index][1],
                schedulerContainerDeep: reminderEvent[index][2],
                schedulerContainerLight: reminderEvent[index][3],
                schedulerContainerTextDeep: reminderEvent[index][4],
                schedulerContainerTextLight: reminderEvent[index][5],
                timeStart: reminderEvent[index][6],
                timeEnd: reminderEvent[index][7],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 15);
            },
            itemCount: reminderEvent.length,
          ),
        )
      ],
    );
  }
}
