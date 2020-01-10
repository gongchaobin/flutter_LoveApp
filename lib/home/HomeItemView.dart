
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeItemView extends StatefulWidget {

  String title;

  HomeItemView({this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeItemViewState();
  }

}

class HomeItemViewState extends State<HomeItemView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buildSectionView(),
          buildListItem()
        ],
      ),
    );
  }

  Widget buildSectionView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('images/icon_flag.png',width: 18,height: 18,),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
         '恋爱百科',
         style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Widget buildListItem() {
    return Container(
      padding: EdgeInsets.only(top: 15,left: 5),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset('images/icon_list_2.png',width: 30,height: 30,),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                '单身期',
                style: TextStyle(color: Colors.black,fontSize: 16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '文案文案文案',
                style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),
              ),
              Image.asset('images/icon_back.png',width: 22,height: 22,),
            ],
          )
        ],
      ),
    );
  }



}