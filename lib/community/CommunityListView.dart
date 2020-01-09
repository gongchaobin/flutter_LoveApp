
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';

class CommunityListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommunityListViewState();
  }

}

class CommunityListViewState extends State<CommunityListView> {

  var datas;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    if(datas == null) {
//      return Center(
//        child: CupertinoActivityIndicator(
//        ),
//      );
//    } else{
        return Container(
          child: RefreshIndicator(
            color: AppColor.primary,
            onRefresh: fetchData,
            child: new ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context,int index) {
                return buildItem();
              },
            ),
          ),
        );
//    }
  }

  Widget buildItem() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "508期: 看看如何聊天,堪称聊天模版",
            style: TextStyle(fontSize: 14),
          ),
          Image.asset('images/tab_my_selected.png')
        ],

      ),
    );
  }



  Future<void> fetchData() {

  }



}