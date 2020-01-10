

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/community/CommunityListView.dart';
import 'package:love_app/community/CommunityTitleBar.dart';
import 'package:love_app/util/screen.dart';

class CommunitySence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CommunityTitleBar(),
      body: Container(
        color: AppColor.white,
        width: Screen.width,
        height: Screen.height,
        child: CommunityListView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Image.asset('images/icon_publish.png',width: 56,height: 56,),
      ),
    );
  }


}