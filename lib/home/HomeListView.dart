
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_app/app/ApiClient.dart';
import 'package:love_app/app/AppColor.dart';
import 'package:love_app/home/HomeBannerView.dart';
import 'package:love_app/home/HomeItemView.dart';
import 'package:love_app/model/MovieNews.dart';

class HomeListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeListViewState();
  }

}

class HomeListViewState extends State<HomeListView> {

  int pageIndex = 0;
  var newsList;
  var nowPlayingList, comingList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(newsList == null) {
      return Center(
        child: CupertinoActivityIndicator(),
      );
    } else {
      return Container(
        child: RefreshIndicator(
          color: AppColor.primary,
          onRefresh: fetchData,
          child: ListView(
            cacheExtent: 10000,
            addAutomaticKeepAlives: true,
            children: <Widget>[
              HomeItemView(),

            ],
          ),
        ),
      );
    }
  }

  // 加载数据
  Future<void> fetchData() async {
    ApiClient client = new ApiClient();
    List<MovieNews> news = await client.getNewsList();

    setState(() {
      newsList =news2Banner(news);
    });
  }

  List<NewsBanner> news2Banner(var list) {
    List content = list;
    List<NewsBanner> banners = [];
    content.forEach((data) {
      banners.add(new NewsBanner(data));
    });
    return banners;
  }


}