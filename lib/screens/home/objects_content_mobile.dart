import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:news/widgets/objective_details/objective_details.dart';

import 'components/InfoPalette.dart';

class ObjectivesContentMobile extends StatelessWidget {
  const ObjectivesContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 2,
      width: Get.width * 2,
      color: Color.fromRGBO(66, 76, 68, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoPalette(
            title: 'Experience',
            text:
                'Communicate with colleagues, share ideas, find a team in a project in one space.',
            icon: Icons.people_rounded,
            width: 400,
          ),
          SizedBox(
            height: Get.width / 20,
          ),
          InfoPalette(
            title: 'Connect',
            text:
                'Communicate with colleagues, share ideas, find a team in a project in one space.',
            icon: Icons.people_rounded,
            width: 400,
          ),
          SizedBox(
            height: Get.width / 20,
          ),
          InfoPalette(
            title: 'Act',
            text:
                'Communicate with colleagues, share ideas, find a team in a project in one space.',
            icon: Icons.people_rounded,
            width: 400,
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
      ),
    );
  }
}

const _defaultColor = Color(0xFF34568B);

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? _defaultColor,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
