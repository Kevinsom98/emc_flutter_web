import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:news/screens/home/components/Footer.dart';
import 'package:news/screens/home/home_content_desktop.dart';
import 'package:news/screens/home/objects_content_desktop.dart';
import 'package:news/screens/home/objects_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_drawer/navigation_drawer.dart';
import '../../widgets/objective_details/objective_details.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        // backgroundColor: Colors.black,
        // appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
        //     ? AppBar(
        //         backgroundColor: Colors.transparent,
        //         elevation: 0,
        //         actions: [Image.asset("assets/images/guyanamap.png")],
        //       )
        //     : null,
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken),
                    ),
                  ),
                  height: Get.height,
                  child: CenteredView(
                    child: Column(
                      children: <Widget>[
                        // NavigationBar(),
                        Container(
                          color: Colors.black12,
                          width: Get.width,
                          // child: Align(
                          //   alignment: Alignment.topRight,
                          child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/emclogo.png',
                                  width: 200,
                                  color: Colors.white.withOpacity(0.7),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      child: Text(
                                        'Home',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    TextButton(
                                      child: Text('Team',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    TextButton(
                                      child: Text('About us',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    ElevatedButton(
                                      child: Text('Contact'),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(FeatherIcons.search,
                                        color: Colors.white))
                              ]),
                        ),

                        // ),
                        Expanded(
                          child: ScreenTypeLayout(
                            mobile: HomeContentMobile(),
                            desktop: HomeContentDesktop(),
                          ),
                        ),

                        sizingInformation.deviceScreenType !=
                                DeviceScreenType.mobile
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Card(
                                          color: Colors.black12,
                                          child: Padding(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Get to know more about EMC \nFoundation.',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        VerticalDivider(
                                          color: Colors.white,
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Card(
                                          color: Colors.black12,
                                          child: Padding(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Primary focus of our mission is \nspreading awareness of the environment.',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.white,
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Card(
                                          color: Colors.black12,
                                          child: Padding(
                                            padding: EdgeInsets.all(20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Primary focus of our mission is \nspreading awareness of the environment.',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          FeatherIcons.facebook,
                                          color: Colors.white,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(FeatherIcons.instagram),
                                        color: Colors.white,
                                      ),
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(
                                          FeatherIcons.mail,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : IntrinsicHeight(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                      color: Colors.black12,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Get to know more about EMC \nFoundation.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    // Divider(
                                    //   color: Colors.white,
                                    // ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Card(
                                      color: Colors.black12,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Primary focus of our mission is \nspreading awareness of the environment.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                ),
                // Positioned.fill(
                //   // left: Get.width / 1860,
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: Image.asset(
                //       'assets/images/guyanamap.png',
                //       height: 1200,
                //     ),
                //   ),
                // ),
              ]),
              Container(
                height: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile
                    ? Get.height / 1.2
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
                child: sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile
                    ? Padding(
                        padding: EdgeInsets.fromLTRB(12, 40, 12, 12),
                        child: ObjectivesContentMobile())
                    : Center(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(12, 40, 12, 12),
                            child: ObjectivesContentDesktop())),
                // CenteredView(
                //   // child: Container(
                //   //   height: Get.height / 4,
                //   //   width: Get.width,
                //   // child: Expanded(
                //   child: ScreenTypeLayout(
                //     mobile: ObjectivesContentMobile(),
                //     desktop: ObjectivesContentDesktop(),
                //   ),
                // ),
              ),
              Container(
                height: 800,
                color: Colors.white,
                child: Text('See what we have been doing'),
              ),
              Container(
                child: Footer(),
              )
            ],
          ),
          // Positioned(
          //   child: Align(
          //     alignment: Alignment.centerRight,
          //     child: Container(
          //         child: Image.asset(
          //       "assets/images/guyanamap.png",
          //       fit: BoxFit.cover,
          //     )),
          //   ),
          // ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
