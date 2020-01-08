
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:love_app/model/BannerModel.dart';

class HomeBannerView extends StatelessWidget {

  final List<BannerModel> models;

  HomeBannerView(this.models);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: CarouselSlider(
        items: <Widget>[
          Text('老逼你弄萨了1'),
          Text('老逼你弄萨了2'),
          Text('老逼你弄萨了3'),
          Text('老逼你弄萨4'),
        ],

      ),
    );
  }

}