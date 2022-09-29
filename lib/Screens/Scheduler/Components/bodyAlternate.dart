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
    return SingleChildScrollView(
      child: Column(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                SchedulerItem(
                  timeStart: '15:00',
                  timeEnd: '17:00',
                  mainSchedulerText: 'Document Submission',
                  subSchedulerText:
                      'Submit Clearance form to department office',
                  schedulerContainerDeep: schedulerBlueMain,
                  schedulerContainerLight: schedulerBlueSub,
                  schedulerContainerTextDeep: schedulerBlueMainText,
                  schedulerContainerTextLight: schedulerBlueSubText,
                ),
                SchedulerItem(
                  timeStart: '13:00',
                  timeEnd: '14:00',
                  mainSchedulerText: 'Grad Gown Collection',
                  subSchedulerText: 'Go to FF12 for graduation gown',
                  schedulerContainerDeep: schedulerOrangeMain,
                  schedulerContainerLight: schedulerOrangeSub,
                  schedulerContainerTextDeep: schedulerOrangeMainText,
                  schedulerContainerTextLight: schedulerOrangeSubText,
                ),
                SchedulerItem(
                  timeStart: '15:00',
                  timeEnd: '17:00',
                  mainSchedulerText: 'Recommendation Letter',
                  subSchedulerText:
                      'Find and ask Dr. Osei for letter of recommendation',
                  schedulerContainerDeep: schedulerBlueMain,
                  schedulerContainerLight: schedulerBlueSub,
                  schedulerContainerTextDeep: schedulerBlueMainText,
                  schedulerContainerTextLight: schedulerBlueSubText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}