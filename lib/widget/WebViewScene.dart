

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:love_app/util/screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScene extends StatefulWidget {
  final String url;
  final String title;

  WebViewScene({@required this.url, this.title});


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
        leading: GestureDetector(
          onTap: back,
          child: Image.asset('images/icon_arrow_back_black.png'),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {

            },
            child: Image.asset('images/icon_menu_share.png'),
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