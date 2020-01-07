
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:love_app/home/HomeListView.dart';
import 'package:love_app/util/screen.dart';

class HomeScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeSceneState();
  }

}

class HomeSceneState extends State<HomeScene> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: HomeListView(),
    );
  }


}