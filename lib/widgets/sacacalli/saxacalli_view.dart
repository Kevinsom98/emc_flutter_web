import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../controllers/homeController.dart';
import '../../screens/home/components/InfoPalette.dart';

class SaxacalliView extends StatelessWidget {
  const SaxacalliView({Key? key}) : super(key: key);

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
                // color: Colors.white,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kingfisher.jpeg'),
                    fit: BoxFit.cover,
                    scale: 4,
                    opacity: 100,
                  ),
                ),
                height: 300,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (sizingInformation.deviceScreenType !=
                            DeviceScreenType.mobile) ...[
                          Text(
                            'SAXACALLI',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(
                                    color: Colors.white.withOpacity(0.8)),
                          ),
                          Divider(
                            indent: Get.width / 4,
                            endIndent: Get.width / 4,
                          ),
                          Text(
                            'RAINFOREST CENTRE',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(
                                    color: Colors.white.withOpacity(0.8)),
                          ),
                        ],
                        if (sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile) ...[
                          Text(
                            'SAXACALLI',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                    color: Colors.white.withOpacity(0.8)),
                          ),
                          Divider(
                            indent: Get.width / 4,
                            endIndent: Get.width / 4,
                          ),
                          Text(
                            'RAINFOREST CENTRE',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: Colors.white.withOpacity(0.8)),
                          ),
                        ],
                        // Padding(
                        //   padding: EdgeInsets.only(left: 20, right: 20),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       Column(
                        //         children: [
                        //           Text(
                        //             'The Rainforest Centre offers an opportunity for you to experience the tropical rainforest\nof Guyana. The centre, established for rainforest research, education and awareness is situated on a 25 acre reserve and is\nnestled between the lush tropical rainforest and the mighty Essequibo.',
                        //             style: Theme.of(context)
                        //                 .textTheme
                        //                 .bodyText2
                        //                 ?.copyWith(color: Colors.black),
                        //           ),
                        //         ],
                        //       ),
                        //       Column(
                        //         children: [
                        //           Text(
                        //             'Enjoy nature walks through the rainforest on the maze trails, paddle canoes up nearby creeks or enjoy\na peaceful afternoon of birdwatching.',
                        //             style: Theme.of(context)
                        //                 .textTheme
                        //                 .bodyText2
                        //                 ?.copyWith(color: Colors.black),
                        //           ),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 400,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height,
                      child: Image.asset(
                        'assets/images/saxacalli.JPG',
                        color: Colors.black.withOpacity(0.3),
                        colorBlendMode: BlendMode.overlay,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              sizingInformation.deviceScreenType ==
                                      DeviceScreenType.mobile
                                  ? Get.dialog(AlertDialog(
                                      content: YoutubePlayerIFrame(
                                      controller: controller.youtubeController,
                                      aspectRatio: 9 / 16,
                                    )))
                                  : Get.dialog(AlertDialog(
                                      content: YoutubePlayerIFrame(
                                      controller: controller.youtubeController,
                                      aspectRatio: 16 / 9,
                                    )
                                      // Column(
                                      //   children: <Widget>[
                                      //     Container(
                                      //         padding:
                                      //             const EdgeInsets.only(top: 20.0)),
                                      //     const Text('With remote mp4'),
                                      //     Container(
                                      //       padding: const EdgeInsets.all(20),
                                      //       child: AspectRatio(
                                      //         aspectRatio:
                                      //             controller.video.value.aspectRatio,
                                      //         child: Stack(
                                      //           alignment: Alignment.bottomCenter,
                                      //           children: <Widget>[
                                      //             VideoPlayer(controller.video),
                                      //             ClosedCaption(
                                      //                 text: controller
                                      //                     .video.value.caption.text),
                                      //             _ControlsOverlay(
                                      //                 controller: controller.video),
                                      //             VideoProgressIndicator(
                                      //                 controller.video,
                                      //                 allowScrubbing: true),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      ));
                            },
                            icon: Icon(Icons.play_arrow)),
                      ),
                    ),

                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.only(left: 20, top: 20),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'Saxacalli',
                    //           style: Theme.of(context)
                    //               .textTheme
                    //               .headline1
                    //               ?.copyWith(color: Colors.white),
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsets.all(12),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               Column(
                    //                 children: [
                    //                   Text(
                    //                     'The Rainforest Centre offers an opportunity for you to experience the tropical rainforest\nof Guyana. The centre, established for rainforest research, education and awareness is situated on a 25 acre reserve and is\nnestled between the lush tropical rainforest and the mighty Essequibo.',
                    //                     style: Theme.of(context)
                    //                         .textTheme
                    //                         .bodyText2
                    //                         ?.copyWith(color: Colors.white),
                    //                   ),
                    //                 ],
                    //               ),
                    //               Column(
                    //                 children: [
                    //                   Text(
                    //                     'Enjoy nature walks through the rainforest on the maze trails, paddle canoes up nearby creeks or enjoy\na peaceful afternoon of birdwatching.',
                    //                     style: Theme.of(context)
                    //                         .textTheme
                    //                         .bodyText2
                    //                         ?.copyWith(color: Colors.white),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ]);
          },
        ),
      );
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration(milliseconds: 0),
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<Duration>(
            initialValue: controller.value.captionOffset,
            tooltip: 'Caption Offset',
            onSelected: (Duration delay) {
              controller.setCaptionOffset(delay);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Duration>>[
                for (final Duration offsetDuration in _exampleCaptionOffsets)
                  PopupMenuItem<Duration>(
                    value: offsetDuration,
                    child: Text('${offsetDuration.inMilliseconds}ms'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}
