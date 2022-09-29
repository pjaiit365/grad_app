import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PhotoStudioItem extends StatelessWidget {
  final VoidCallback press;
  final String studioLogo;
  final String studioBackgroundImage;
  final String studioName;
  final String studioMantra;
  const PhotoStudioItem({
    Key? key,
    required this.studioLogo,
    required this.studioName,
    required this.studioMantra,
    required this.studioBackgroundImage,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(
                  studioBackgroundImage,
                ),
                fit: BoxFit.fill),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kprimaryAlternate.withOpacity(0.7),
                  kprimary.withOpacity(0.7),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        fit: BoxFit.fill,

                        studioLogo,
                        // color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, bottom: 12, top: 8),
                    child: VerticalDivider(
                      color: Colors.white,
                      width: 10,
                      thickness: 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          studioName,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          studioMantra,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
