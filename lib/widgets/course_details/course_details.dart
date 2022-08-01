import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

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
            width: Get.width,
            child: sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        // 'FLUTTER WEB.\nTHE BASICS',
                        'EMC \nFOUNDATION',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            height: 0.9,
                            color: Colors.white,
                            fontSize: titleSize),
                        textAlign: textAlignment,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Established in 2022 with the mission to foster environment awareness and education.',
                        style: TextStyle(
                          fontSize: descriptionSize,
                          height: 1.5,
                          color: Colors.white,
                        ),
                        textAlign: textAlignment,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: Get.height / 20,
                        width: Get.width / 2,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Learn more'),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       'Get to know more about EMC Foundation',
                      //       textAlign: TextAlign.center,
                      //     ),
                      //     VerticalDivider(),
                      //     Text(
                      //         'Primary focus of our mission is spreading awareness of the environment')
                      //   ],
                      // )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        // 'FLUTTER WEB.\nTHE BASICS',
                        'EMC \nFOUNDATION',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            height: 0.9,
                            color: Colors.white,
                            fontSize: titleSize),
                        textAlign: textAlignment,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Established in 2022 with the mission to foster environment\nawareness and education.',
                        style: TextStyle(
                          fontSize: descriptionSize,
                          height: 1.5,
                          color: Colors.white,
                        ),
                        textAlign: textAlignment,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: Get.height / 20,
                        width: Get.width / 12,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Learn more'),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       'Get to know more about EMC Foundation',
                      //       textAlign: TextAlign.center,
                      //     ),
                      //     VerticalDivider(),
                      //     Text(
                      //         'Primary focus of our mission is spreading awareness of the environment')
                      //   ],
                      // )
                    ],
                  ));
      },
    );
  }
}
