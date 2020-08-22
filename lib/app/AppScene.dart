
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/app/RootScene.dart';
import 'package:love_app/login/LoginScene.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "LoveApp",
      navigatorObservers: [routeObserver],
      routes: {
        "LoginScene": (context) => LoginScene(),
      },

      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: _appBarTheme(),
        buttonTheme: _buttonThemeData(),
        dividerColor: Color(0xFFEEEEEE),
        scaffoldBackgroundColor: AppColor.paper,
        textTheme: TextTheme(
          headline1: TextStyle(color: AppColor.darkGrey)
        ),
      ),

      home: RootScene(),
    );
  }

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
        centerTitle: true,
        elevation: 2.0,
        textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 18,
                color: Colors.black
            )
        )
    );
  }

  ButtonThemeData _buttonThemeData() {
    return ButtonThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
    );
  }

}