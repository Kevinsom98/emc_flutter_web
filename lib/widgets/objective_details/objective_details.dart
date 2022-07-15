import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../screens/home/components/InfoPalette.dart';

class ObjectiveDetails extends StatelessWidget {
  const ObjectiveDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
            height: Get.height * 2,
            width: Get.width,
            color: Color.fromRGBO(66, 76, 68, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoPalette(
                  title: 'Experience',
                  text:
                      'Communicate with colleagues, share ideas, find a team in a project in one space.',
                  icon: Icons.people_rounded,
                ),
                SizedBox(
                  width: Get.width / 20,
                ),
                InfoPalette(
                  title: 'Connect',
                  text:
                      'Communicate with colleagues, share ideas, find a team in a project in one space.',
                  icon: Icons.people_rounded,
                ),
                SizedBox(
                  width: Get.width / 20,
                ),
                InfoPalette(
                  title: 'Act',
                  text:
                      'Communicate with colleagues, share ideas, find a team in a project in one space.',
                  icon: Icons.people_rounded,
                ),

                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Text(
                //       // 'FLUTTER WEB.\nTHE BASICS',
                //       'Objectives',
                //       style: TextStyle(
                //           fontWeight: FontWeight.w800,
                //           height: 0.9,
                //           color: Colors.white,
                //           fontSize: titleSize),
                //       textAlign: textAlignment,
                //     ),
                //     SizedBox(
                //       height: 30,
                //     ),
                //     Text(
                //       '01. Experience',
                //       style: TextStyle(
                //         fontSize: descriptionSize,
                //         height: 1.5,
                //         color: Colors.white,
                //       ),
                //       textAlign: textAlignment,
                //     ),
                //     Text(
                //       '0.2 Connect',
                //       style: TextStyle(
                //         fontSize: descriptionSize,
                //         height: 1.5,
                //         color: Colors.white,
                //       ),
                //       textAlign: textAlignment,
                //     ),
                //     Text(
                //       '0.3 Act',
                //       style: TextStyle(
                //         fontSize: descriptionSize,
                //         height: 1.5,
                //         color: Colors.white,
                //       ),
                //       textAlign: textAlignment,
                //     )
                //   ],
                // ),
              ],
            ));
      },
    );
  }
}
