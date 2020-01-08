
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/widget/WebViewScene.dart';

class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  // 进入 webview
  static pushWeb(BuildContext context, String url, String title) {
    Navigator.push(context, CupertinoPageRoute(builder: (context) {
      return WebViewScene(url: url, title: title);
    }));
  }


}