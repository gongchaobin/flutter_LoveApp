
import 'package:love_app/login/LoginScene.dart';
import 'package:flutter/material.dart';


class MyScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySceneState();
  }
}

class MySceneState extends State<MyScene> {
  BuildContext ctx;
  List dataList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //数据加载
    loadData();
  }

 void loadData() {
   dataList = new List();
   dataList.add({
     "title":"我的提问",
     "image":"images/mine/mine_question.png",
   });
   dataList.add({
     "title":"我的回答",
     "image":"images/mine/mine_answer.png",
   });
   dataList.add({
     "title":"评论反馈",
     "image":"images/mine/mine_feedback.png",
   });
   dataList.add({
     "title":"使用帮助",
     "image":"images/mine/mine_help.png",
   });
   dataList.add({
     "title":"隐私政策",
     "image":"images/mine/mine_policy.png",
   });
   dataList.add({
     "title":"用户协议",
     "image":"images/mine/mine_protocol.png",
   });
   dataList.add({
     "title":"关于我们",
     "image":"images/mine/mine_about_us.png",
   });
   dataList.add({
     "title":"退出登录",
     "image":"images/mine/mine_logout.png",
   });
 }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: listWidget(),
      ),
    );
  }

ListView listWidget() {
  print(dataList);
  return ListView.builder(
    itemCount: this.dataList.length + 2,
    itemBuilder: (BuildContext context,int index) {
      return _itemBuilder(index);
    },
  );
}

Widget _itemBuilder(int index) {
  if(0 == index) {
    return headWidget();
  } else if (1 == index) {
    return vipWidget();
  }
  return getRow(index - 2);
}


Widget headWidget() {
  return Container(
    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
    child: Row(
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
        Padding(padding: EdgeInsets.only(left: 10),),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ],
    ),
  );
}

  Widget profileBtnWidget() {
    return Container(
      width: 84,
      height: 28,
      alignment: Alignment.center,
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
          print('修改信点击');
        },
      )
    );
  }

  Widget vipWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 15,top: 10,right: 15,bottom: 15),
      child: Stack(
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
                    print('立即开通点击');
                    Navigator.push(ctx, 
                    MaterialPageRoute(builder: (ctx) => LoginScene()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getRow(int index) {
    var data = dataList[index];
    return ListTile(
      leading: Image.asset(
        data["image"],
        width: 24,
        height: 24,
        ),
      title: Text(data["title"]),
      trailing: Image.asset(
        "images/mine/mine_join.png",
        height: 16,
      ),
      onTap: (){
        print(data['title'] + '点击');
      },
    );
  }
}