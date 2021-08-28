
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/PlantData.dart';
import 'package:planti/util/DateUtil.dart';

class PlantProfileWidget extends StatelessWidget {
  PlantProfileWidget({Key key, this.plant}) : super(key: key);
  final PlantData plant;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(0),
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /**
                 * Header
                 * */
                Padding(
                  padding: const EdgeInsets.all(30),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('${plant.nickname}', style: TextStyle(color : Colors.black, fontSize: 20),),
                            Text('${plant.name}', style: TextStyle(color : Colors.grey),),

                          ],
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: IconButton(
                            icon: Icon(Icons.add, color: Colors.white,),
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ListView(
                                      children: <ListTile>[
                                        ListTile(
                                          leading: Icon(Icons.water),
                                          title: Text('물주기'),
                                          trailing: Icon(Icons.navigate_next),
                                          onTap: () {},
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone_enabled),
                                          title: Text('기록남기기'),
                                          trailing: Icon(Icons.navigate_next),
                                          onTap: () {},
                                        )
                                      ],
                                    );
                                  }
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                ),
                /**
                 * Profile
                 * */
                Padding(
                  padding: const EdgeInsets.all(30),
                  child :
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('${plant.introduction}'),
                        Text('함께한지 : ${DateUtil.getPeriod(123)}', style: TextStyle(color : Colors.grey),),
                        Text('물준지 : D+7', style: TextStyle(color : Colors.grey),)
                      ],
                    )
                )
                /**
                 * Feed
                 * */
              ],
            )
      );
  }
}