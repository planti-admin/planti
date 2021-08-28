
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/PlantData.dart';
import 'package:planti/widget/plant/PlantListItemWidget.dart';

/**
 * 식물 목록페이지
 *
 * */
class PlantListPage extends StatelessWidget {
  PlantListPage({Key key}) : super(key: key);

  Widget _buildPlantListItemWidget (DocumentSnapshot doc) {
    final plant = PlantData(doc['name'], doc['nickname'], doc['thumbnail'], doc['introduction']);
    return PlantListItemWidget(plant : plant);
  }

  @override
  Widget build(BuildContext context) {
    // List<PlantData> plants = PlantData.getMock();

    return Scaffold(
        // body : Center(
        //   child: Icon(Icons.list),
        // )
        body : StreamBuilder<QuerySnapshot> (
          stream: FirebaseFirestore.instance.collection('plant').snapshots(),
          builder: (context, snapshot) {
            if(!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            final documents = snapshot.data.docs;
            return ListView(
              scrollDirection: Axis.vertical,
              children: documents.map((doc) => _buildPlantListItemWidget(doc)).toList(),
            );
          },
        )

    );
  }
}
