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
          width: 600,
          child: Column(
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
              ElevatedButton(onPressed: () {}, child: Text('Learn more'))
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
          ),
        );
      },
    );
  }
}
