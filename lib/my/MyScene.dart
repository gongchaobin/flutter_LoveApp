
import 'package:flutter/material.dart';

class MyScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MySceneWidget();
  }
}

class MySceneWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySceneState();
  }
}

class MySceneState extends State<MySceneWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      // height: 135,
      padding: EdgeInsets.only(left: 15,right: 15,top: 100),
      // color: Colors.yellow,
      child: Column (
        children: <Widget>[
          headWidget(),
          SizedBox(height: 10,),
          vipWidget(),
          Expanded(
            child: listWidget(),
          )
        ],
      )
    );

    // return Scaffold(
    //   body: Column(
    //       children: <Widget>[
    //         lineWidget(),
    //         Container(
    //           color: Colors.white,
    //           // height: 50,
    //           child: Row(
    //             children: <Widget>[
    //               Padding(
    //                 padding: EdgeInsets.only(left: 15,top: 20,bottom: 20),
    //                 child: Image.asset(
    //                   'images/tab_my.png',
    //                   width: 32,
    //                   height: 32,
    //                 ),
    //               ),
    //               Padding(
    //                 padding: EdgeInsets.only(left: 15),
    //                 child: FlatButton(
    //                   color: Colors.blue,
    //                   child: Text('登录1'),
    //                   shape: const RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.all(Radius.circular(12))
    //                   ), 
    //                   onPressed: () {

    //                   },
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         lineWidget(),
    //         Expanded(
    //           child: ListView.builder(
    //             itemCount: 10,
    //             itemBuilder: (BuildContext context,int index) {
    //               return getRow(index);
    //             },
    //           ),
    //         )
    //       ],
    //     ),
    // );
  }

ListView listWidget() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context,int index) {
      return getRow(index);
    },
  );
}

Widget headWidget() {
  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipOval(
              child: FadeInImage.assetNetwork(
                placeholder: "images/mine/mine_headphoto.png",
                fit: BoxFit.contain,
                image: "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58",
                width: 75,
                height: 75,
              ),
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '用户名啊大大大大嘎嘎阿斯顿发噶都是嘎是嘎沙雕噶电饭锅蛋糕啊大公司的反攻倒算反攻倒算风格',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(20, 20, 20, 1),
                    ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '账号1234567',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(30, 30, 30, 1),
                        ),
                      ),
                      profileBtnWidget(),
                    ],
                  )
                ],
              ),
            ) 
          ],
        )
      ],
    ),
  );
}

  Widget profileBtnWidget() {
    return Container(
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('images/mine/mine_modify_btn_bg.png')
        )
      ),
      child: FlatButton(
        child: Text(
          '修改信息',
          style: TextStyle(
              color: Colors.red,
              fontSize: 12
            ),
        ), 
        onPressed: () {
          print('object');
        },
      )
    );
  }

  Widget vipWidget(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          'images/mine/mine_vip_bg.png',
          height: 100,
        ),
        Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'images/mine/mine_vip.png',
                width: 28,
                height: 28,
              ),
              SizedBox(width: 5,),
              Expanded(
                child: Text(
                  'VIP会员',
                  style: TextStyle(
                    color: Color.fromRGBO(238, 190, 60, 1),
                    fontSize: 22
                  ),
                ),
              ),
              FlatButton(
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                color: Color.fromRGBO(238, 190, 60, 1),
                child: Text(
                  '立即开通',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ), onPressed: () {

                },
              )
            ],
          ),
        )
      ],
    );
  }

  Widget lineWidget() {
    return Container(
      height: 10,
      color: Color.fromRGBO(224, 224, 224, 1),
    );
  }

Widget getRow(int index) {
  return Container(
    // height: 50,
    // margin: EdgeInsets.only(bottom: 10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15,top: 10,bottom: 10),
              child: Image.asset(
                'images/ic_me_follows.png',
                width: 30,
                height: 30,
              ),
            ),
            Expanded(
              child: Text('柱子'),
            ),
            Icon(
              Icons.chevron_right,
              color: const Color.fromARGB(255, 204, 204, 204),
            ),
          ],
        ),
        // Container(
        //   height: 1,
        //   color: Colors.grey,
        // )
      ],
      
      ),
    );
  }
}