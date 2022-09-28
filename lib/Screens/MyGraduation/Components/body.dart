import 'package:flutter/material.dart';

import '../../../Components/edit_profil_menu_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Personal Information', style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Container(
              // height: size.height * 0.4,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EditProfileMenuItem(
                        mainText: 'Name', subText: 'Ebenezer Ayitey'),
                    Divider(),
                    EditProfileMenuItem(
                        mainText: 'Index Number', subText: '9399619'),
                    Divider(),
                    EditProfileMenuItem(
                        mainText: 'Reference Number', subText: '20681952'),
                    Divider(),
                    EditProfileMenuItem(mainText: 'Gender', subText: 'Male'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Text('Graduating Class', style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Container(
              // height: size.height * 0.4,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EditProfileMenuItem(
                        mainText: 'Graduating Class',
                        subText: 'Second Class - Upper'),
                    Divider(),
                    EditProfileMenuItem(mainText: 'CWA', subText: '67.14'),
                    Divider(),
                    EditProfileMenuItem(
                        mainText: 'Programme',
                        subText: 'BSc. Computer Science'),
                    Divider(),
                    EditProfileMenuItem(mainText: 'Year', subText: '4'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Text('Graduating Details', style: TextStyle(fontSize: 17)),
            SizedBox(height: 5),
            Container(
              // height: size.height * 0.4,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    EditProfileMenuItem(
                        mainText: 'Location',
                        subText: 'Allotey Auditoriom (GF 1)'),
                    Divider(),
                    EditProfileMenuItem(
                        mainText: 'Date', subText: '12/10/2022'),
                    Divider(),
                    EditProfileMenuItem(mainText: 'Time', subText: '12:30 PM'),
                    Divider(),
                    EditProfileMenuItem(
                        mainText: 'Seat Allocation',
                        subText: 'Column 4, Row 10'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
