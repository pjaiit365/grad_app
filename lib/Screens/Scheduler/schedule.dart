import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Components/add_new_event_widget.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/schdule_type.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/enum.dart';
import 'package:popup_card/popup_card.dart';
import '../Scheduler/Components/bodyAlternate.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final descriptionController = TextEditingController();
  final timeStartController = TextEditingController();
  final timeEndController = TextEditingController();
  final eventTitleController = TextEditingController();
  final deController = TextEditingController();

  Future addEvent() async {
    addEventDetails(
      eventTitleController.text.trim(),
      int.parse(timeStartController.text.trim()),
      int.parse(timeEndController.text.trim()),
      descriptionController.text.trim(),
    );
    Navigator.pop(context);
  }

  Future addEventDetails(
      String title, int start, int end, String description) async {
    await FirebaseFirestore.instance.collection('reminder').add({
      'Title': title,
      'Start': start,
      'End': end,
      'Description': description,
    });
  }

  @override
  void initState() {
    eventTitleController.clear();
    timeStartController.clear();
    timeEndController.clear();
    descriptionController.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.schedule),
      floatingActionButton: PopupItemLauncher(
        tag: 'scheduleTag',
        child: Material(
          color: kprimary.withOpacity(0.9),
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.add,
            size: 56,
            color: Colors.white,
          ),
        ),
        popUp: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Add new event',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 20),
                    AddNewEventsWidget(
                        textController: eventTitleController,
                        onChanged: (value) {},
                        newEventWidth: 0.9,
                        newEventHeight: 65,
                        newEventHintText: 'Title'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AddNewEventWidgetTimer(
                          onChanged: (value) {},
                          newEventWidth: 0.43,
                          newEventHeight: 65,
                          newEventHintText: 'Starts',
                          textController: timeStartController,
                        ),
                        AddNewEventWidgetTimer(
                            textController: timeEndController,
                            onChanged: (value) {},
                            newEventWidth: 0.43,
                            newEventHeight: 65,
                            newEventHintText: 'End'),
                      ],
                    ),
                    AddNewEventsWidget(
                      textController: descriptionController,
                      onChanged: (value) {},
                      newEventWidth: 0.9,
                      newEventHeight: 200,
                      newEventHintText: 'Description',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Select Category: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ScheduleType(
                            schduleTypeBorderSideColor: schedulerGreenMain,
                            press: () {
                              setState(() {});
                            },
                            schduleTypeColor: schedulerGreenSub,
                            schduleTypeTextColor: schedulerGreenSubText,
                            schduleTypeText: 'Personal',
                          ),
                          ScheduleType(
                            schduleTypeBorderSideColor: schedulerBlueMain,
                            press: () {},
                            schduleTypeColor: schedulerBlueSub,
                            schduleTypeTextColor: schedulerBlueSubText,
                            schduleTypeText: 'School',
                          ),
                          ScheduleType(
                            schduleTypeBorderSideColor: schedulerOrangeMain,
                            press: () {},
                            schduleTypeColor: schedulerOrangeSub,
                            schduleTypeTextColor: schedulerOrangeSubText,
                            schduleTypeText: 'Graduation',
                          ),
                          ScheduleType(
                            schduleTypeBorderSideColor: Colors.black12,
                            press: () {},
                            schduleTypeColor: Colors.white,
                            schduleTypeTextColor: Colors.black54,
                            schduleTypeText: '+Add',
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: addEvent,
                      child: Text(
                        'Add Event',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: kprimary,
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 16),
                          elevation: 4.0,
                          shadowColor: kprimary),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
