

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:love_app/util/screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebViewScene extends StatefulWidget {
  final String url;
  final String title;
  bool isShowBack = false; // 是否显示左边back按钮
  bool isShowShare = false; // 是否显示右边分享按钮

  WebViewScene({@required this.url, @required this.title,@required this.isShowBack, @required this.isShowShare});


  _WebViewSceneState createState() => _WebViewSceneState();
}

class _WebViewSceneState extends State<WebViewScene> {

  @override
  void deactivate() {
    print('webview deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    Screen.updateStatusBarStyle(SystemUiOverlayStyle.light);
    print('webview dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.title ?? ''),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: back,
          child: Offstage(
            child: Image.asset('images/icon_arrow_back_black.png'),
            offstage: this.widget.isShowBack == null ? false : true,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
            },
            child: Offstage(
                child: Image.asset('images/icon_menu_share.png'),
                offstage: this.widget.isShowShare == null ? false : true,
            ),
          ),
        ],
      ),
      body: WebView(
        initialUrl: this.widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }

  // 返回上个页面
  back() {
    Navigator.pop(context);
  }
}