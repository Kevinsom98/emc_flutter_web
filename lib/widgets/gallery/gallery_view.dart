import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/homeController.dart';
import '../../screens/home/components/InfoPalette.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

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

            return Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                height: Get.height,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Gallery',
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
                                    'Take a quick tour of the various activities that the EMC \nFoundation has carried out since being established.',
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
                        height: 40,
                      ),
                      sizingInformation.deviceScreenType !=
                              DeviceScreenType.mobile
                          ? Container(
                              height: Get.height / 2,
                              width: Get.width / 1.1,
                              child: ListView.builder(
                                  itemCount: controller.galleryImages.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var items = controller.galleryImages
                                        .elementAt(index);
                                    return Card(
                                      color: Colors.grey,
                                      elevation: 3,
                                      margin: EdgeInsets.all(12),
                                      child: Image.asset(items,
                                          width: Get.width / 2.8,
                                          height: Get.height / 6,
                                          fit: BoxFit.cover,
                                          color: Colors.black.withOpacity(0.2),
                                          colorBlendMode: BlendMode.overlay),
                                    );
                                  }),
                            )
                          : Container(
                              height: Get.height / 2,
                              width: Get.width,
                              child: CarouselSlider.builder(
                                  itemCount: controller.galleryImages.length,
                                  itemBuilder: (BuildContext context,
                                      int itemIndex, int pageViewIndex) {
                                    var items = controller.galleryImages
                                        .elementAt(itemIndex);
                                    return Container(
                                      child: Card(
                                        color: Colors.grey,
                                        elevation: 3,
                                        margin: EdgeInsets.all(12),
                                        child: Image.asset(items,
                                            width: Get.width / 1,
                                            height: Get.height / 6,
                                            fit: BoxFit.cover,
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            colorBlendMode: BlendMode.overlay),
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                    height: 400,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.8,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: false,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                  ))
                              // ListView.builder(
                              //     itemCount: controller.galleryImages.length,
                              //     scrollDirection: Axis.horizontal,
                              //     itemBuilder:
                              //         (BuildContext context, int index) {
                              //       var items = controller.galleryImages
                              //           .elementAt(index);
                              //       return Card(
                              //         color: Colors.grey,
                              //         elevation: 3,
                              //         margin: EdgeInsets.all(12),
                              //         child: Image.asset(items,
                              //             width: Get.width / 1,
                              //             height: Get.height / 6,
                              //             fit: BoxFit.cover,
                              //             color: Colors.black.withOpacity(0.2),
                              //             colorBlendMode: BlendMode.overlay),
                              //       );
                              //     }),
                              ),
                      SizedBox(
                        height: 40,
                      ),
                      sizingInformation.deviceScreenType !=
                              DeviceScreenType.mobile
                          ? SizedBox(
                              height: Get.height / 20,
                              width: Get.width / 12,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('See more'),
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
                            )
                          : SizedBox(
                              height: Get.height / 20,
                              width: Get.width / 2,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('See more'),
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
                            )
                    ],
                  ),
                ),
              ),
            ]);
          },
        ),
      );
}
