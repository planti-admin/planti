import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 설정페이지
 * */
class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          title : Text('설정'),
        ),
        body : Center(
          child: Icon(Icons.settings),
        )
    );
  }
}