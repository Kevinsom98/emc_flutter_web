import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:news/screens/home/components/InfoPalette.dart';
import 'package:news/widgets/objective_details/objective_details.dart';
import 'dart:math';

class ObjectivesContentDesktop extends StatelessWidget {
  const ObjectivesContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Objectives',
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Center(
            child: ObjectiveDetails(),
          ),
        ),
      ],
    );
  }
}
