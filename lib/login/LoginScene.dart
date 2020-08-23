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

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "登录"
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 80,left: 20,right: 20),
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/login/login_logo.png',
              width: 106,
              height: 106,
            ),
            SizedBox(height: 30,),
            TextField(
              controller: controller,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "请输入账号",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 0.5
                  )
                )
              ),
              onChanged: (text) {
                print('change $text');
              },
              onSubmitted: (text) {
                print('submit $text');
              },
            ),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '请输入密码',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5
                    )
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue,
                        width: 0.5
                    )
                )
              ),
              onChanged: (text) {
                print('change $text');
              },
              onSubmitted: (text) {
                print('submit $text');
              },
            ),
          ],
        ),
      ),
    );
  }
}

