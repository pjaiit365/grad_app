import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/Components/date_widget.dart';
import 'package:grad_app/Components/scheduler_item.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/enum.dart';
import 'package:popup_card/popup_card.dart';

import '../../Components/schduler_top_row.dart';
import '../Scheduler/Components/body.dart';

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
      floatingActionButton: PopupItemLauncher(
        tag: 'scheduleTag',
        child: Material(
          color: kprimary.withOpacity(0.9),
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.add,
            size: 55,
            color: Colors.white,
          ),
        ),
        popUp: PopUpItem(
          padding: EdgeInsets.all(0),
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          tag: 'scheduleTag',
          child: PopUpItemBody(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class PopUpItemBody extends StatelessWidget {
  const PopUpItemBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 500,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(),
          Container(),
        ],
      ),
    );
  }
}

//
// floatingActionButton: Padding(
// padding: const EdgeInsets.only(bottom: 12.0, right: 4),
// child: FloatingActionButton(
// elevation: 4,
// splashColor: Colors.transparent,
// onPressed: () {},
// shape:
// RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// child: Icon(
// Icons.add,
// shadows: [
// Shadow(offset: Offset(0.1, 0.4), color: kprimary),
// ],
// size: 30,
// ),
// backgroundColor: kprimary.withOpacity(0.9),
// ),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
