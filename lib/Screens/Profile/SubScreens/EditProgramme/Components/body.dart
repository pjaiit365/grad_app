import 'package:flutter/material.dart';
import 'package:grad_app/Components/build_divider.dart';
import 'package:grad_app/Components/edit_profil_menu_item.dart';
import 'package:grad_app/Components/edit_profile_tab.dart';
import 'package:grad_app/Components/profile_divider.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // height: 175,
            width: double.infinity,
            color: kprimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: ProfilePic()),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    EditProfileTabBio(
                      tabText: 'Bio',
                    ),
                    EditProfileTabProg(
                      tabText: 'Programme',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  // height: size.height * 0.3,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        // height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.numbers_rounded,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'Student ID',
                                    subText: '20681952'),
                                EditProfileMenuItem(
                                    mainText: 'Index Number',
                                    subText: '9399619'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ProfileDivider(),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        // height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.menu_book_outlined,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'Programme Stream',
                                    subText: 'BSc. Computer Science'),
                                EditProfileMenuItem(
                                    mainText: 'Programme Option',
                                    subText: 'General'),
                                EditProfileMenuItem(
                                    mainText: 'Current Year', subText: '3'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ProfileDivider(),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        // height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.location_pin,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'Campus', subText: 'Kumasi'),
                                EditProfileMenuItem(
                                    mainText: 'Residential Status',
                                    subText: 'Non-Residential'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ProfileDivider(),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        // height: 120,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.money,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'Fee Category',
                                    subText: 'Continuing Ghanaian Student'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
