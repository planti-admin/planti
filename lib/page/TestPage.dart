

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 테스트페이지
 *
 * */
class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
              mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
              mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬
              children: <Widget>[
                Container(
                  color : Colors.red,
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color : Colors.green,
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color : Colors.blue,
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                )
              ]

          ),
          Row(
            mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
            mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬
            children: <Widget>[
              Image.asset('assets/brid.jpg', width: 100, height: 100,),
              Image.asset('assets/github.png', width: 100, height: 100,)
            ],
          )
        ],
      ),
    );
  }
}