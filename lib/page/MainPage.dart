
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/page/MyPage.dart';
import 'package:planti/page/StoryPage.dart';

import '../main.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _index = 0; // 네이게이션 카운터
  var _page = [
    StoryPage(),
    MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_index],
      /**
       * Bottom Navigation
       * */
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          items:<BottomNavigationBarItem>[
            // News
            BottomNavigationBarItem(
              icon: Icon(Icons.upload_rounded),
              label : 'News',
              tooltip: '새로운 컨텐츠를 확인하세요.',
            ),
            // My
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label : 'My',
                tooltip: '내 정보를 확인하세요.',
            )
          ]
      ),
    );
  }
}