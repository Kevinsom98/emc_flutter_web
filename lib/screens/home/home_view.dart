import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:news/controllers/homeController.dart';
import 'package:news/screens/home/home_content_desktop.dart';
import 'package:news/screens/home/objects_content_desktop.dart';
import 'package:news/screens/home/objects_content_mobile.dart';
import 'package:news/widgets/advisory_board/advisoryBoard_view.dart';
import 'package:news/widgets/gallery/gallery_view.dart';
import 'package:news/widgets/landing/landing_view.dart';
import 'package:news/widgets/sacacalli/saxacalli_view.dart';
import 'package:news/widgets/topbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/objectives/objective_view.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/web_controller.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => ResponsiveBuilder(
          builder: (context, sizingInformation) => Scaffold(
            // drawer:
            //     sizingInformation.deviceScreenType == DeviceScreenType.mobile
            //         ? Drawer()
            //         : null,

            extendBodyBehindAppBar: true,
            appBar: ResponsiveWidget.isSmallScreen(context)
                ? AppBar(
                    backgroundColor: Theme.of(context)
                        .bottomAppBarColor
                        .withOpacity(controller.opacity),
                    elevation: 0,
                    centerTitle: true,
                    actions: [
                      IconButton(
                        icon: Icon(FeatherIcons.search),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          // EasyDynamicTheme.of(context).changeTheme();
                        },
                      ),
                    ],
                    title: Image.asset(
                      'assets/images/emclogo.png',
                      height: Get.height / 13,
                    )
                    // Text(
                    //   'EXPLORE',
                    //   style: TextStyle(
                    //     color: Colors.blueGrey[100],
                    //     fontSize: 20,
                    //     fontFamily: 'Montserrat',
                    //     fontWeight: FontWeight.w400,
                    //     letterSpacing: 3,
                    //   ),
                    // ),
                    )
                : PreferredSize(
                    preferredSize: Size(Get.width, 1000),
                    child: TopBarContents(controller.opacity),
                  ),
            drawer: Drawer(),
            body: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: RefreshIndicator(
                onRefresh: () async {
                  //Do whatever you want on refrsh.Usually update the date of the listview
                },
                child: WebScrollbar(
                  color: Colors.blueGrey,
                  backgroundColor: Colors.blueGrey.withOpacity(0.3),
                  width: 10,
                  heightFraction: 0.3,
                  controller: controller.scrollController,
                  child: SingleChildScrollView(
                    controller: controller.scrollController,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LandingView(),
                        // if (sizingInformation.deviceScreenType ==
                        //     DeviceScreenType.mobile) ...[
                        //   Container(
                        //     height: sizingInformation.deviceScreenType ==
                        //             DeviceScreenType.mobile
                        //         ? Get.height / 1.2
                        //         : Get.height / 2,
                        //     width: Get.width,
                        //     decoration: BoxDecoration(
                        //       gradient: LinearGradient(
                        //         begin: Alignment.topRight,
                        //         end: Alignment.bottomLeft,
                        //         colors: [
                        //           // Colors.white.withOpacity(0.9),
                        //           Color.fromRGBO(66, 76, 68, 1),
                        //           Color.fromRGBO(34, 49, 39, 1),
                        //         ],
                        //       ),
                        //     ),
                        //     child: sizingInformation.deviceScreenType ==
                        //             DeviceScreenType.mobile
                        //         ? Padding(
                        //             padding: EdgeInsets.fromLTRB(12, 40, 12, 12),
                        //             child: ObjectivesContentMobile())
                        //         : Center(
                        //             child: Padding(
                        //                 padding: EdgeInsets.fromLTRB(12, 40, 12, 12),
                        //                 child: ObjectivesContentDesktop())),
                        //   ),
                        // ],

                        //<--------- OBJECTIVES --------->
                        ObjectivesView(),
                        //<--------- OBJECTIVES --------->

                        SaxacalliView(),
                        GalleryView(),
                        Container(
                          child: AdvisoryBoardView(),
                        ),
                        Container(
                          child: BottomBar(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
