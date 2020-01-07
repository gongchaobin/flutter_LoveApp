import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';

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
    Image.asset('images/tab_home.png'),
    Image.asset('images/tab_my.png'),
    Image.asset('images/tab_my.png'),
    Image.asset('images/tab_my.png'),
    Image.asset('images/tab_my.png'),
  ];
  List<Image> _tabSelectedImages = [
    Image.asset('images/tab_home_selected.png'),
    Image.asset('images/tab_home_selected.png'),
    Image.asset('images/tab_home_selected.png'),
    Image.asset('images/tab_home_selected.png'),
    Image.asset('images/tab_my_selected.png'),
  ];

  List<String> menus = [
    "恋爱话术","聊天案例","展示面","课程","会员服务"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        // 中间显示区域
      ),
      bottomNavigationBar:CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: getTabIcon(0),
            title: Text(menus[0])
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(1),
            title: Text(menus[1])
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(2),
              title: Text(menus[2])
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(3),
              title: Text(menus[3])
          ),
          BottomNavigationBarItem(
              icon: getTabIcon(4),
              title: Text(menus[4])
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

  Image getTabIcon(int index) {
    if(index == tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


}