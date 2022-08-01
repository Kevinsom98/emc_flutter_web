import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/screens/home/home_view.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //   BouncingScrollWrapper.builder(context, widget!),
      //   maxWidth: 1900,
      //   minWidth: 450,
      //   defaultScale: true,
      //   breakpoints: [
      //     const ResponsiveBreakpoint.resize(450, name: MOBILE),
      //     const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //     const ResponsiveBreakpoint.resize(1900, name: DESKTOP),
      //     const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //   ],
      // ),
      debugShowCheckedModeBanner: false,
      title: 'EMC Foundation',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
          headline5: TextStyle(color: kDarkBlackColor),
        ),
      ),
      home: HomeView(),
    );
  }
}
