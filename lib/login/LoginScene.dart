import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:love_app/widget/MyAppBar.dart';

class LoginScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScene> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      print('input ${controller.text}');
    });
    return Scaffold(
      appBar: new MyAppBar(
        centerTitle: '登录',
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Image.asset(
                'images/login/login_logo.png',
                width: 106,
                height: 106,
              ),
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration.collapsed( 
                  hintText: '请输入账号',
                ),
                onChanged: (text) {
                  print('change $text');
                },
                onSubmitted: (text) {
                  print('submit $text');
                },
              ),
            ),
            lineWidget(),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration.collapsed(
                  hintText: '请输入密码',
                  ),
                onChanged: (text) {
                  print('change $text');
                },
                onSubmitted: (text) {
                  print('submit $text');
                },
              ),
            ),
            lineWidget(),
            // SizedBox(height: 50,),
            // TextField(
              
            // ),
            
            // SizedBox(height: 5,),
            // TextField(
              
            // ),
            // lineWidget(),
            // SizedBox(height: 30,),
            // FlatButton(
            //   child: Container(
            //     margin: EdgeInsets.only(left: 15,right: 15),
            //     height: 40,
            //     decoration: BoxDecoration(
            //       color: Color.fromRGBO(254, 84, 158, 1),
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //     ),
            //     child:  Center(
            //       child: Text('登录'),
            //     ),
            //   ), onPressed: () {
            //     print('登录点击');
            //   },
            // ),
            // SizedBox(height: 20,),
            
          ],
        ),
      ),
    );
  }
  Widget lineWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 15),
      child: Image.asset("images/login/login_sepline.png"),
    );
  }
}

