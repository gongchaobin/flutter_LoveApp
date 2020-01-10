
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/util/screen.dart';

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
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buildHead(),
          buildContent(),
          buildDivider()
        ],
      ),
    );
  }

  Widget buildHead() {
    return Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 15)),
        ClipOval(
          child: Image.asset('images/default_avatar.png',width: 56,height: 56,),
        ),
        Padding(padding: EdgeInsets.only(left: 6)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              '用户名',
              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w300),
            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text(
              '年月日',
              style: TextStyle(fontSize: 15,color: Colors.grey),
            )
          ],
        )
      ],
    );
  }

  Widget buildContent() {
    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 3,bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '文案文案文案文案',
            style: TextStyle(fontSize: 14,color: Colors.blue),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '#标签',
                style: TextStyle(fontSize: 14,color: Colors.red),
              ),
              Row(
                children: <Widget>[
                  Image.asset('images/report_normal.png',width: 18,height: 18,),
                  Padding(padding: EdgeInsets.only(left: 12)),
                  Image.asset('images/icon_recommd.png',width: 18,height: 18,),
                  Padding(padding: EdgeInsets.only(left: 3)),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 12,color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              '文案文案文案问啊安稳安稳安安康康文案文案文案问啊安稳安稳安安康康文案'
                  '文案文案问啊安稳安稳安安康康文案文案文案问啊安稳安稳安安康'
                  '康文案文案文案问啊安稳安稳安安康康',
              style: TextStyle(fontSize: 14,color: Colors.black),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      height: 20,
      width: double.infinity,
      color: Colors.grey,
    );
  }



  Future<void> fetchData() {

  }



}