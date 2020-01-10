
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:love_app/app/AppSize.dart';

class HeadTitleBar extends StatefulWidget implements PreferredSizeWidget {
  final String text; //从外部指定内容
  final Color statusBarColor; //设置statusbar的颜色
  final double contentHeight = AppSize.topBarHeight;
  final bool rightShow;
  final VoidCallback callback;

  HeadTitleBar({
    this.text,
    this.statusBarColor,
    this.rightShow,
    this.callback,
  }) : super();

  @override
  State<StatefulWidget> createState() {
    return new _HeadTitleBarState(this.callback);
  }

  @override
  Size get preferredSize => new Size.fromHeight(contentHeight);
}

class _HeadTitleBarState extends State<HeadTitleBar> {
  VoidCallback callback;

  _HeadTitleBarState(this.callback);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      height: widget.contentHeight,
      child: SafeArea(
        top: true,
        child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          width: 40,
                        ),
                      ),
                      Text(
                        "${widget.text}",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                      widget.rightShow
                          ? GestureDetector(
                        child: Container(
                          child: Image.asset(
                            'images/icon_menu_share.png',
                            width: 24,
                            height: 20,
                          ),
                          margin: EdgeInsets.only(right: 15),
                        ),
                        onTap: this.callback,
                      )
                          : Container(
                        width: 24,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
              ],
            )),
      ),
    );
  }
}


