
import 'package:flutter/material.dart';
import 'package:love_app/chat/ChatListView.dart';

class ShowScene extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "展示面",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ChatListView(),
    );
  }

}