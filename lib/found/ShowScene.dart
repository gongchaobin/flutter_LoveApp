
import 'package:flutter/material.dart';
import 'package:love_app/community/CommunityListView.dart';

class ShowScene extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "展示面",
        ),
      ),
      body: CommunityListView(),
    );
  }

}