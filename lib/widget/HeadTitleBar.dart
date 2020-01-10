
import 'package:flutter/material.dart';

class HeadTitleBar extends StatefulWidget implements PreferredSizeWidget {

  final String text;
  final Color statusBarColor;
  final double contentHeight = 80.0;
  final bool rightShow;
  final VoidCallback callback;

  HeadTitleBar({
    this.text,
    this.statusBarColor,
    this.rightShow,
    this.callback
  });


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => null;

}