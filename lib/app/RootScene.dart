import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/community/CommunitySence.dart';
import 'package:love_app/found/ShowScene.dart';
import 'package:love_app/home/HomeScene.dart';
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
  bool isLoaded = false;

  // 定义 tab icon
  List<Image> _tabImages = [
    Image.asset('images/tab_home_selected.png',width: 24,height: 24,),
    Image.asset('images/tab_community_selected.png',width: 24,height: 24,),
    Image.asset('images/tab_found_selected.png',width: 24,height: 24,),
    Image.asset('images/tab_my_selected.png',width: 24,height: 24,),
  ];

  List<Image> _tabSelectedImages = [
    Image.asset('images/tab_home.png',width: 24,height: 24,),
    Image.asset('images/tab_community.png',width: 24,height: 24,),
    Image.asset('images/tab_found.png',width: 24,height: 24,),
    Image.asset('images/tab_my.png',width: 24,height: 24,),
  ];

  List<String> menus = [
    "主页",
    "社区",
    "发现",
    "我的"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          HomeScene(), // 主页
          CommunitySence(), // 社区
          ShowScene(), // 发现
          MyScene(), // 我的
        ],
        index: tabIndex,
      ),
      bottomNavigationBar:CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _tabImages[0],
            activeIcon: _tabSelectedImages[0],
            title: Text(menus[0])
          ),
          BottomNavigationBarItem(
            icon: _tabImages[1],
            activeIcon: _tabSelectedImages[1],
            title: Text(menus[1])
          ),
          BottomNavigationBarItem(
            icon: _tabImages[2],
            activeIcon: _tabSelectedImages[2],
            title: Text(menus[2])
          ),
          BottomNavigationBarItem(
            icon: _tabImages[3],
            activeIcon: _tabSelectedImages[3],
            title: Text(menus[3])
          ),
        ],
        onTap: (tabIndex) {
          setState(() {
            this.tabIndex = tabIndex;
          });
        },
        currentIndex: tabIndex,
        backgroundColor: Colors.white,
        activeColor: AppColor.primary,
        border: Border(top: BorderSide.none),
      ),
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


}