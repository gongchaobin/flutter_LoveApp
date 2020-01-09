
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '我的',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),
          ),
        backgroundColor: Colors.white,
        elevation: 0,
        // brightness: Brightness.dark,
      ),
      body: Column(
          children: <Widget>[
            lineWidget(),
            Container(
              color: Colors.white,
              // height: 50,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15,top: 20,bottom: 20),
                    child: Image.asset(
                      'images/tab_my.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: FlatButton(
                      color: Colors.blue,
                      child: Text('登录1'),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ), 
                      onPressed: () {

                      },
                    ),
                  )
                ],
              ),
            ),
            lineWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context,int index) {
                  return getRow(index);
                },
              ),
            )
          ],
        ),
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
        Container(
          height: 1,
          color: Colors.grey,
        )
      ],
      
      ),
    );
  }
}