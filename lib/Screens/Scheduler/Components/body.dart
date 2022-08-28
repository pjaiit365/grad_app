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
  @override
  Widget build(BuildContext context) {
    //for division between schedules and dates
    return SafeArea(
      child: Column(
        children: <Widget>[
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
                  children: List.generate(7, (index) => DateWidget()),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SchedulerItem(
                  timeStart: '09:00',
                  timeEnd: '10:00',
                  mainSchedulerText: 'Room Chores',
                  subSchedulerText: 'Cleaning, washing, ironing, etc.',
                  schedulerContainerDeep: schedulerGreenMain,
                  schedulerContainerLight: schedulerGreenSub,
                  schedulerContainerTextDeep: schedulerGreenMainText,
                  schedulerContainerTextLight: schedulerGreenSubText,
                ),
                SizedBox(height: 20),
                SchedulerItem(
                  timeStart: '11:00',
                  timeEnd: '12:00',
                  mainSchedulerText: 'Room Chores',
                  subSchedulerText: 'Cleaning, washing, ironing, etc.',
                  schedulerContainerDeep: schedulerBlueMain,
                  schedulerContainerLight: schedulerBlueSub,
                  schedulerContainerTextDeep: schedulerBlueMainText,
                  schedulerContainerTextLight: schedulerBlueSubText,
                ),
                SizedBox(height: 20),
                SchedulerItem(
                  timeStart: '13:00',
                  timeEnd: '14:00',
                  mainSchedulerText: 'Room Chores',
                  subSchedulerText: 'Cleaning, washing, ironing, etc.',
                  schedulerContainerDeep: schedulerOrangeMain,
                  schedulerContainerLight: schedulerOrangeSub,
                  schedulerContainerTextDeep: schedulerOrangeMainText,
                  schedulerContainerTextLight: schedulerOrangeSubText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
