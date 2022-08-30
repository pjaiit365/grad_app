import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class SchedulerItem extends StatelessWidget {
  final String timeStart;
  final String timeEnd;
  final String mainSchedulerText;
  final String subSchedulerText;
  final Color schedulerContainerDeep;
  final Color schedulerContainerLight;
  final Color schedulerContainerTextDeep;
  final Color schedulerContainerTextLight;

  const SchedulerItem({
    Key? key,
    required this.mainSchedulerText,
    required this.subSchedulerText,
    required this.schedulerContainerDeep,
    required this.schedulerContainerLight,
    required this.schedulerContainerTextDeep,
    required this.schedulerContainerTextLight,
    required this.timeStart,
    required this.timeEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 120,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  timeStart,
                  style: TextStyle(color: kLightColor),
                ),
                Spacer(),
                Text(
                  timeEnd,
                  style: TextStyle(color: kLightColor),
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    color: schedulerContainerDeep,
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: schedulerContainerLight,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          mainSchedulerText,
                          style: TextStyle(
                              fontSize: 22, color: schedulerContainerTextDeep),
                        ),
                        Text(
                          subSchedulerText,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 19, color: schedulerContainerTextLight),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
