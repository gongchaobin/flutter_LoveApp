
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/home/HomeBannerView.dart';

class HomeListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeListViewState();
  }

}

class HomeListViewState extends State<HomeListView> {

  var datas; // 数据源

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    if(datas == null) {
//      return Center(
//        child: CupertinoActivityIndicator(),
//      );
//    } else {
      return Container(
        child: RefreshIndicator(
          color: AppColor.primary,
          onRefresh: fetchData,
          child: ListView(
            cacheExtent: 10000,
            addAutomaticKeepAlives: true,
            children: <Widget>[
              HomeBannerView(null),

            ],
          ),
        ),
      );
//    }
  }

  // 加载数据
  Future<void> fetchData() async {

  }



}