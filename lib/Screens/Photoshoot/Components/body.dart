import 'package:flutter/material.dart';

import '../../../Components/photo_studio_item.dart';
import '../../../constants.dart';
import '../photo_studio_details.dart';
import '../photoshoot_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
      child: studioLogo.isNotEmpty
          ? ListView.separated(
              itemCount: studioLogo.length,
              itemBuilder: (context, index) {
                return PhotoStudioItem(
                  studioLogo: '${studioLogo[index]}',
                  studioName: '${studioName[index]}',
                  studioMantra: '${studioMantra[index]}',
                  studioBackgroundImage: '${studioBackgroundImage[index]}',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhotoStudioDetails(),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 0);
              },
            )
          : const Center(
              child:
                  Text('There are no accredited photographers on this list')),
    );
  }
}
