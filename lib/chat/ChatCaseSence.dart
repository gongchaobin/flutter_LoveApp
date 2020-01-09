

import 'package:flutter/material.dart';
import 'package:love_app/chat/ChatListView.dart';

class ChatCaseSence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "聊天实战",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ChatListView(),
    );
  }
}