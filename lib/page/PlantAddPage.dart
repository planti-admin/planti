import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantAddPage extends StatelessWidget {
  const PlantAddPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {},
          )
        ],
      ),
      body :
      Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('이름'),
            TextField(
              // decoration: InputDecoration(
              //     labelText: '입력'
              // ),
            ),
            Text('별명'),
            TextField(
              // decoration: InputDecoration(
              //     labelText: '입력'
              // ),
            ),
            Text('소개'),
            TextField(
              // decoration: InputDecoration(
              //     labelText: '입력'
              // ),
            )

          ],
        ),
      )
    );
  }
}