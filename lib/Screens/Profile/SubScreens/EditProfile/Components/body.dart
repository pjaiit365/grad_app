import 'package:flutter/material.dart';
import 'package:grad_app/Components/edit_profil_menu_item.dart';
import 'package:grad_app/Components/edit_profile_tab.dart';
import 'package:grad_app/Components/profile_divider.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                              Icons.person,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'Name',
                                    subText: 'Ebenezer Ayitey'),
                                EditProfileMenuItem(
                                    mainText: 'Gender', subText: 'Male'),
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
                              Icons.mail,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'School Email Address',
                                    subText: 'eayitey2@st.knust.edu.gh'),
                                EditProfileMenuItem(
                                    mainText: 'Personal Email Adress',
                                    subText: 'pjaiitey@gmail.com'),
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
                              Icons.phone,
                              color: kprimary,
                              size: 30,
                            ),
                            SizedBox(width: 22),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                EditProfileMenuItem(
                                    mainText: 'KNUST Mobile Number',
                                    subText: '0501311657'),
                                EditProfileMenuItem(
                                    mainText: 'Personal Mobile Number',
                                    subText: '0200070588'),
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
                                    mainText: 'Postal Address',
                                    subText: 'M9A, Lower Sadelmi,\N Akosombo,'),
                                EditProfileMenuItem(
                                    mainText: 'Region', subText: 'Eastern'),
                                EditProfileMenuItem(
                                    mainText: 'Country', subText: 'Ghana'),
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
