
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppSize.dart';
import 'package:love_app/util/screen.dart';

class CommunityTitleBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommunityTitleBarState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(AppSize.topBarHeight);

}

class CommunityTitleBarState extends State<CommunityTitleBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Container(
        color: Colors.red,
        height: AppSize.topBarHeight,
        child: SafeArea(
          top: true,
          child: Container(
            padding: EdgeInsets.only(right: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      margin: EdgeInsets.only(top: 11,bottom: 11,right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('images/icon_search.png',width: 20,height: 20,),
                          Padding(padding: EdgeInsets.only(left: 5,right: 5)),
                          Text("问答社区搜索",style: TextStyle(fontSize: 14,color:Colors.grey),)
                        ],
                      ),
                    ),
                    onTap: () {

                    },
                  )
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "搜索",
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                  onTap: () {

                  },
                )
              ],
            ),
          ),
        ),
      );

  }

}