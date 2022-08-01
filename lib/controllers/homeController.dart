import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/models/Blog.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomeController extends GetxController {
  bool experience = true;
  bool connect = false;
  bool act = false;
  double scrollPosition = 0;
  double opacity = 0;

  var screenSize;
  final video = VideoPlayerController.asset(
    'assets/videos/saxacalli.mp4',
    // closedCaptionFile: _loadCaptions(),
    videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
  );
  List<String> get galleryImages =>
      ["assets/images/1.JPG", "assets/images/2.JPG", "assets/images/3.JPG"];
  late ScrollController scrollController = Get.put(ScrollController());

  List<AdvisoryBoard> get advisoryBoard => [
        AdvisoryBoard(
          id: 1,
          name: 'Andrew Bishop',
          bio:
              "Andrew Bishop holds degrees in Geography/Economics from York University in Toronto, and in Geography/Regional Development from the University of Waterloo,Canada.He has served as a Senior Planner and Section Chief in the Department of Planning andLand Use and as a Senior Project Manager and Division Chief in the Department of Parks and Recreation, both in San Diego, California.Mr. Bishop has lectured for several years in Applied Geography and Land Use Planningat the University of Guyana and at San Diego State University in California. He has guest lectured at the University of Toronto, University of Waterloo, York University,University of London and Oxford. He has published dozens of articles and papers overthe last 40 years.Formerly Commissioner of Lands and Surveys of Guyana for eight years, Mr. Bishop subsequently led Guyana\’s delegation to the UNFCCC as Guyana\’s Lead negotiator fro2008 to the Paris Conference in 2015.Mr. Bishop is currently a Private consultant in the areas of Land Use, Environment and Climate Change. He is a REDD Plus consultant with the Coalition for Rainforest Nations under the UNFCCC, an Adviser to the Guyana Lands and Surveys Commission, provides advisory support to the Department of Environment and Climate Change in Guyana, and serves on several State Boards in the land and natural resources sectors in Guyana.",
        )
      ];

  _scrollListener() {
    screenSize = Get.size;
    opacity = scrollPosition < screenSize.height * 0.40
        ? scrollPosition / (screenSize.height * 0.40)
        : 1;
    scrollPosition = scrollController.position.pixels;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
    // loadProfileInfo();
  }

  YoutubePlayerController youtubeController = YoutubePlayerController(
    initialVideoId: 'uGnJM_j3qFs',
    params: YoutubePlayerParams(
      playlist: ['uGnJM_j3qFs'], // Defining custom playlist
      startAt: Duration(seconds: 0),
      showControls: true,
      showFullscreenButton: false,
      autoPlay: true,
    ),
  );

  toggleExperienceColor() {
    experience = !experience;
    if (experience = true) {
      connect = false;
      act = false;
    }
    update();
  }

  toggleConnectColor() {
    connect = !connect;
    if (connect = true) {
      experience = false;
      act = false;
    }
    update();
  }

  toggleActColor() {
    act = !act;
    if (act = true) {
      experience = false;
      connect = false;
    }
    update();
  }
}
