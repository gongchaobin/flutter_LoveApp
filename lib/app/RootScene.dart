
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:love_app/community/CommunitySence.dart';
import 'package:love_app/found/ShowScene.dart';
import 'package:love_app/home/HomeScene.dart';
import 'package:love_app/model/HomeItem.dart';
import 'package:love_app/my/MyScene.dart';

class RootScene extends StatefulWidget {

  final Widget child;

  RootScene({Key key,this.child}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RootSceneState();
  }

}

class _RootSceneState extends State<RootScene> {

  int tabIndex = 0;
  List<HomeItem> list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    list.add(HomeItem("主页", "images/tab_home_selected.png", "images/tab_home.png"));
    list.add(HomeItem("社区", "images/tab_community_selected.png", "images/tab_community.png"));
    list.add(HomeItem("发现", "images/tab_found_selected.png", "images/tab_found.png"));
    list.add(HomeItem("我的", "images/tab_my_selected.png", "images/tab_my.png"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _scaffold();
  }

  Scaffold _scaffold() {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        fixedColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        onTap: (tabIndex) {
          setState(() {
            this.tabIndex = tabIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: list.map((e) =>
          BottomNavigationBarItem(
            icon: Image.asset(
              e.icon,width: 24.0,height: 24.0,
            ),
            activeIcon: Image.asset(
              e.actionIcon,width: 24.0,height: 24.0,
            ),
            title: Text(
              e.title,
            )
          )
        ).toList(),
      ),
      body: IndexedStack(
        children: [
          HomeScene(), // 主页
          CommunitySence(), // 社区
          ShowScene(), // 发现
          MyScene(),
        ],
        index: tabIndex,
      ),
    );
  }



}