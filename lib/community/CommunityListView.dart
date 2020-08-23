
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      color: AppColor.primary,
      onRefresh: fetchData,
      child: ListView.separated(itemBuilder: (BuildContext context,int index) {
        return buildItem();
      }, separatorBuilder: (BuildContext context,int index) {
        return Divider(
          height: 1,
          color: Colors.grey,
        );
      }, itemCount: 10),
    );
  }

  Widget buildItem() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buildHead(),
          buildContent(),
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
        SizedBox(width: 10,),
        Column(
          children: <Widget>[
            Text(
              '用户名',
              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 3,),
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
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
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

  Future<void> fetchData() {

  }



}