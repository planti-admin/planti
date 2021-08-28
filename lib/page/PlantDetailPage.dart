
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/PlantData.dart';
import 'package:planti/widget/plant/PlantProfileWidget.dart';

/**
 * 식물 상세페이지
 *
 * */
class PlantDetailPage extends StatelessWidget {
  PlantDetailPage({Key key}) : super(key: key);
  // final _items = List.generate(3, (index) => ListTile(title: Text('Live next to Plant!')));

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as PlantData;
    print(args.thumbnail);
    return Scaffold(
        // appBar : AppBar(
        //   title : Text('First'),
        // ),
        body : CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                pinned: true,
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  // title: Text('${args.name} - ${args.nickname}'),
                  background: Image.asset('${args.thumbnail}', fit: BoxFit.cover),
                ),
                actions : <Widget>[
                  /**
                   * - 외부노출여부
                   * - 닉네임, 대표이미지, 소개글, 입양날짜변경
                   * - 물주기설정 (알림수신)
                   * - 기억서랍에 보관하기
                   * - TODO 테마컬러설정
                   * */
                  IconButton(
                      icon : Icon(Icons.settings),
                      onPressed: () {}
                  )
                ]
            ),
            // SliverChild(
            //     delegate: SliverChildDelegate()
            // ),
            SliverList(
                delegate: SliverChildListDelegate([
                  PlantProfileWidget(plant: args),
                ])
            ),
          ]
        )
    );
  }
}