
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/app/RootScene.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "LoveApp",
      navigatorObservers: [routeObserver],

      theme: ThemeData(
        primaryColor: Colors.white,
        dividerColor: Color(0xFFEEEEEE),
        scaffoldBackgroundColor: AppColor.paper,
        textTheme: TextTheme(
          body1: TextStyle(color: AppColor.darkGrey)
        ),
      ),

      home: RootScene(),
    );
  }

}