
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/PlantData.dart';

class PlantListItemWidget extends StatelessWidget {
  PlantListItemWidget({Key key, this.plant}) : super(key: key);
  final PlantData plant;

  @override
  Widget build(BuildContext context) {

   return
     GestureDetector(
       onTap: () async {
         final result = await Navigator.pushNamed(context, '/detail', arguments: plant);
       },
      child : Container(
        // color : Colors.green,
        height: 140,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Colors.grey)
          ),
        ),
        child: new Row(
          mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    '${plant.thumbnail}',
                    // 'assets/plant/a.jpeg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            Column(
              // mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
              mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${plant.name}', style: TextStyle( fontSize: 16 )),
                Text('${plant.nickname}', style: TextStyle( fontSize: 12, color: Colors.grey, )),
              ],
            )
         ],
       ),
      )
   );
  }
}