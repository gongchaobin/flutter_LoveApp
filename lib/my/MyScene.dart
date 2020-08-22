

import 'dart:ui';

import 'package:love_app/login/LoginScene.dart';
import 'package:flutter/material.dart';
import 'package:love_app/model/MeItem.dart';


class MyScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySceneState();
  }
}

class MySceneState extends State<MyScene> {
  BuildContext ctx;
  List<MeItem> list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //数据加载
    loadData();
  }

 void loadData() {
    list.add(MeItem("images/mine/mine_question.png", "我的提问"));
    list.add(MeItem("images/mine/mine_answer.png", "我的回答"));
    list.add(MeItem("images/mine/mine_feedback.png", "评论反馈"));
    list.add(MeItem("images/mine/mine_help.png", "使用帮助"));
    list.add(MeItem("images/mine/mine_policy.png", "隐私政策"));
    list.add(MeItem("images/mine/mine_protocol.png", "用户协议"));
    list.add(MeItem("images/mine/mine_about_us.png", "关于我们"));
    list.add(MeItem("images/mine/mine_logout.png", "退出登录"));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "我的"
        ),
      ),
      body: listWidget(),
    );
  }

  ListView listWidget() {
    return ListView.builder(
      itemCount: list.length + 2,
      itemBuilder: (BuildContext context,int index) {
        return _itemBuilder(index);
      },
    );
  }

  Widget _itemBuilder(int index) {
    if(0 == index) {
      // 会员头部
      return _headWidget();
    } else if (1 == index) {
      // vip
      return _vipWidget();
    }
    return getRow(index - 2);
  }

  Widget _headWidget() {
    return  Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          photoWidget(),
          Expanded(child: nameWidget())
        ],
      ),
    );
  }

  Widget photoWidget() {
    return ClipOval(
      child: FadeInImage.assetNetwork(
        placeholder: "images/mine/mine_headphoto.png",
        fit: BoxFit.contain,
        image: "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58",
        width: 75,
        height: 75,
      ),
    );
  }

  Widget nameWidget() {
    return Container(
      height: 75,
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          Text(
            '用户名啊大大大大嘎嘎阿斯顿发噶都是嘎是嘎沙雕噶电饭锅蛋糕啊大公司的反攻倒算反攻倒算风格',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(20, 20, 20, 1),
            ),
          ),
          Expanded(child: numberWidget())
        ],
      ),
    );
  }

  Widget numberWidget() {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Expanded(
            child: Text(
              '账号1234567',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(30, 30, 30, 1),
              ),
            ),
          ),
          profileBtnWidget(),
        ],
      ),
    );
  }

  Widget profileBtnWidget() {
    return FlatButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(
          "1111"
        )));
      },
      color: Colors.white,
      child: Text(
        "修改信息",
        style: TextStyle(
          fontSize: 12,
          color: Colors.red
        ),
      ),
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: Colors.red,
            width: 1.0
          )
      ),
      height: 28.0,
      minWidth: 84.0,
    );
  }

  Widget _vipWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.all(15.0),
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/mine/mine_vip_bg.png',
          ),
          fit: BoxFit.fitWidth
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'images/mine/mine_vip.png',
            width: 28,
            height: 28,
          ),
          SizedBox(width: 15,),
          Expanded(child:
            Text(
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
            ),
            onPressed: () {
              Navigator.pushNamed(context, "LoginScene");
            }
          )
        ],
      )
    );
  }

  Widget getRow(int index) {
    var data = list[index];
    return ListTile(
      leading: Image.asset(
        data.icon,
        width: 24,
        height: 24,
        ),
      title: Text(
        data.title
      ),
      trailing: Image.asset(
        "images/mine/mine_join.png",
        height: 16,
      ),
      onTap: (){
        print(data.title + '点击');
      },
    );
  }
}