
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/PlantData.dart';
import 'package:planti/data/UserData.dart';
import 'package:planti/widget/plant/PlantListItemWidget.dart';
import 'package:planti/widget/user/UserProfileWidget.dart';

/**
 * 식물 목록페이지
 *
 * */
class MyPage extends StatelessWidget {
  MyPage({Key key}) : super(key: key);

  Widget _buildPlantListItemWidget (DocumentSnapshot doc) {
    final plant = PlantData(doc['name'], doc['nickname'], doc['thumbnail'], doc['introduction']);
    return PlantListItemWidget(plant : plant);
  }

  @override
  Widget build(BuildContext context) {
    List<PlantData> plants = PlantData.getMock();
    List<UserData> users = UserData.getMock();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: Text(widget.title),
          title: Text('planti', style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () async {},
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/setting');
              },
            )
          ],
        ),
        body :
          Column(
            children: <Widget>[
              /**
               * User Profile
               * */
              UserProfileWidget(user: users[0]),
              /**
               * TabContent
               * */
              StreamBuilder<QuerySnapshot> (
                stream: FirebaseFirestore.instance.collection('plant').snapshots(),
                builder: (context, snapshot) {
                  if(!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data.docs;
                  return Expanded(
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: documents.map((doc) => _buildPlantListItemWidget(doc)).toList()
                      )
                  );
                },
              ),

            ],
          ),
          /**
           * Floating Button
           * */
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final result = await Navigator.pushNamed(context, '/plantAdd');
            },
            tooltip: 'Plant Add',
            child: Icon(Icons.add),
          ),
    );
  }
}
