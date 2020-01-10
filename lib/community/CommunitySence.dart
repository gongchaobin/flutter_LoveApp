

import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/community/CommunityListView.dart';
import 'package:love_app/util/screen.dart';

class CommunitySence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: AppColor.white,
        width: Screen.width,
        height: Screen.height,
        child: CommunityListView(),
      ),
    );
  }


}