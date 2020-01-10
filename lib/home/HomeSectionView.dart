
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeSectionView extends StatefulWidget {

  String title;

  HomeSectionView({this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeSectionViewState();
  }

}

class HomeSectionViewState extends State<HomeSectionView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buildSectionView(),
        ],
      ),
    );
  }

  Widget buildSectionView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset('images/icon_flag.png',width: 20,height: 20,),
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
         '恋爱百科',
         style: TextStyle(color: Colors.black,fontSize: 16),
        )
      ],
    );
  }

//  Widget buildListItem() {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//      children: <Widget>[
//        Row(
//          children: <Widget>[
//            Image.asset('images/icon_list_2.png',width: 20,height: 20,),
//            Padding(padding: EdgeInsets.only(left: 10)),
//            Text(
//              '单身期',
//              style: TextStyle(color: Colors.black,fontSize: 16),
//            )
//          ],
//        )
//      ],
//    );
//  }



}