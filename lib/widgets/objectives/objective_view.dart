import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/style.dart';
import '../../controllers/homeController.dart';

class ObjectivesView extends StatelessWidget {
  const ObjectivesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => ResponsiveBuilder(
          builder: (context, sizingInformation) {
            // @override
            // Widget build(BuildContext context) {
            //   return ResponsiveBuilder(
            //     builder: (context, sizingInformation) {
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
              height:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? Get.height / 1
                      : Get.height / 2,
              width: Get.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    // Colors.white.withOpacity(0.9),
                    Color.fromRGBO(66, 76, 68, 1),
                    Color.fromRGBO(34, 49, 39, 1),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: sizingInformation.deviceScreenType !=
                        DeviceScreenType.mobile
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpaceRegular,
                              GestureDetector(
                                  onTap: (() =>
                                      controller.toggleExperienceColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '01.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.experience ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' EXPERIENCE',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            ?.copyWith(
                                                color: controller.experience ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                              verticalSpaceSmall,
                              Divider(
                                color: Colors.white,
                              ),
                              verticalSpaceSmall,
                              GestureDetector(
                                  onTap: (() =>
                                      controller.toggleConnectColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '02.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.connect ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' CONNECT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            ?.copyWith(
                                                color: controller.connect ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                              verticalSpaceSmall,
                              Divider(
                                color: Colors.white,
                              ),
                              verticalSpaceSmall,
                              GestureDetector(
                                  onTap: (() => controller.toggleActColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '03.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.act == true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' ACT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            ?.copyWith(
                                                color: controller.act == true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          verticalSpaceRegular,
                          Container(
                            height: 500,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: IntrinsicHeight(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Overview',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                        ),
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                        Text('Gallery',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                ?.copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.2))),
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                        Text('Blogs',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                ?.copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.2))),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                controller.experience == true
                                    ? Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Here we can enter more information about how we will go about promoting experiences ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  ?.copyWith(
                                                      color: Colors.white),
                                            ),
                                            // Spacer(),
                                            SizedBox(
                                              height: Get.height / 4.2,
                                            ),
                                            Row(
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Blog'))
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : controller.act == true
                                        ? Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Text(
                                              'Here we can enter more information about how we will encourage persons to act on environmental issues ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2
                                                  ?.copyWith(
                                                      color: Colors.white),
                                            ))
                                        : controller.connect == true
                                            ? Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Text(
                                                  'Here we can enter more information about how we will connect to like minded individuals',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      ?.copyWith(
                                                          color: Colors.white),
                                                ))
                                            : Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Text(
                                                    ' <-- Select an objective on the left',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white))),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpaceRegular,
                              GestureDetector(
                                  onTap: (() =>
                                      controller.toggleExperienceColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '01.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.experience ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' EXPERIENCE',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                                color: controller.experience ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                              verticalSpaceSmall,
                              Divider(
                                color: Colors.white,
                              ),
                              verticalSpaceSmall,
                              GestureDetector(
                                  onTap: (() =>
                                      controller.toggleConnectColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '02.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.connect ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' CONNECT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                                color: controller.connect ==
                                                        true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                              verticalSpaceSmall,
                              Divider(
                                color: Colors.white,
                              ),
                              verticalSpaceSmall,
                              GestureDetector(
                                  onTap: (() => controller.toggleActColor()),
                                  child: Row(
                                    children: [
                                      Text(
                                        '03.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                color: controller.act == true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                      Text(
                                        ' ACT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3
                                            ?.copyWith(
                                                color: controller.act == true
                                                    ? Colors.white
                                                        .withOpacity(0.7)
                                                    : Colors.white
                                                        .withOpacity(0.2)),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          verticalSpaceTiny,
                          Container(
                            height: Get.height / 2,
                            width: 500,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: IntrinsicHeight(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Overview',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                        ),
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                        Text('Gallery',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                ?.copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.2))),
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                        Text('Blogs',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2
                                                ?.copyWith(
                                                    color: Colors.white
                                                        .withOpacity(0.2))),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                controller.experience == true
                                    ? Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Text(
                                          'Here we can enter more information about how we will go about promoting experiences ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(color: Colors.white),
                                        ))
                                    : controller.act == true
                                        ? Padding(
                                            padding: EdgeInsets.all(12),
                                            child: Text(
                                              'Here we can enter more information about how we will encourage persons to act on environmental issues ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2
                                                  ?.copyWith(
                                                      color: Colors.white),
                                            ))
                                        : controller.connect == true
                                            ? Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Text(
                                                  'Here we can enter more information about how we will connect to like minded individuals',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      ?.copyWith(
                                                          color: Colors.white),
                                                ))
                                            : Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Text(
                                                    ' <-- Select an objective on the left',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white))),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            );
          },
        ),
      );
}
