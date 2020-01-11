import 'package:flutter/material.dart';

class LoginScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<LoginScene> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Login'),
        ),
      ),
    );
  }
}