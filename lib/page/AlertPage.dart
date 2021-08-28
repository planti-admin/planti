import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 알림페이지
 * */
class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          title : Text('알림'),
        ),
        body : Center(
          child: Icon(Icons.notifications),
        )
    );
  }
}