import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/models/Blog.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/homeController.dart';
import '../../screens/home/components/InfoPalette.dart';

class AdvisoryBoardView extends StatelessWidget {
  const AdvisoryBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => ResponsiveBuilder(
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

            return Column(children: [
              Container(
                height: Get.height / 1.2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Advisory Board',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                      color: Colors.black.withOpacity(0.8)),
                            ),
                            if (sizingInformation.deviceScreenType !=
                                DeviceScreenType.mobile) ...[
                              Column(
                                children: [
                                  Text(
                                    'Our advisory board comprises of some of the best minds\n within the enviromental field',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                            color:
                                                Colors.black.withOpacity(0.8)),
                                  )
                                ],
                              ),
                            ],
                          ],
                        ),
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      if (sizingInformation.deviceScreenType !=
                          DeviceScreenType.mobile) ...[
                        Container(
                          height: Get.height / 2,
                          width: Get.width / 1.5,
                          child: ListView.builder(
                              itemCount: controller.advisoryBoard.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                var item =
                                    controller.advisoryBoard.elementAt(index);
                                return Container(
                                    height: 500,
                                    width: 500,
                                    child: Card(
                                        elevation: 4.0,
                                        child: Column(
                                          children: [
                                            // ListTile(
                                            //   title: Text('heading'),
                                            //   subtitle: Text('subheading'),
                                            //   trailing:
                                            //       Icon(Icons.favorite_outline),
                                            // ),
                                            Container(
                                              height: 300.0,
                                              child: Ink.image(
                                                image: AssetImage(
                                                  'assets/images/background.png',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16.0),
                                              alignment: Alignment.centerLeft,
                                              child: Text(item.name ?? ''),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16.0),
                                              alignment: Alignment.centerLeft,
                                              child: Text(item.bio ?? ''),
                                            ),
                                            // ButtonBar(
                                            //   children: [
                                            //     TextButton(
                                            //       child:
                                            //           const Text('CONTACT AGENT'),
                                            //       onPressed: () {/* ... */},
                                            //     ),
                                            //     TextButton(
                                            //       child: const Text('LEARN MORE'),
                                            //       onPressed: () {/* ... */},
                                            //     )
                                            //   ],
                                            // )
                                          ],
                                        )));

                                // Card(
                                //   color: Colors.white,
                                //   elevation: 3,
                                //   margin: EdgeInsets.all(12),
                                //   child: Image.asset(
                                //     'assets/images/background.png',
                                //     width: Get.width / 3,
                                //     height: Get.height / 20,
                                //     fit: BoxFit.fitHeight,
                                //   ),
                                // );
                              }),
                        ),
                      ],
                      if (sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile) ...[
                        Container(
                          height: Get.height,
                          width: Get.width,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    height: Get.height / 1,
                                    width: 500,
                                    child: Card(
                                        elevation: 4.0,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: Get.height / 3,
                                              child: Ink.image(
                                                image: AssetImage(
                                                  'assets/images/background.png',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16.0),
                                              alignment: Alignment.centerLeft,
                                              child: Text('Name of member'),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(16.0),
                                              alignment: Alignment.centerLeft,
                                              child: Text('description...'),
                                            ),
                                          ],
                                        )));
                              }),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ]);
          },
        ),
      );
}
