
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/StoryData.dart';
import 'package:planti/widget/plant/PlantStoryWidget.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<StoryData> storys = StoryData.getMock();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: Text(widget.title),
          title: Text('planti', style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/alert');
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.settings, color: Colors.black),
            //   onPressed: () async {
            //     final result = await Navigator.pushNamed(context, '/setting');
            //   },
            // )
          ],
        ),
        body : ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            PlantStoryWidget(story : storys[0]),
            PlantStoryWidget(story : storys[1]),
            PlantStoryWidget(story : storys[2]),
            PlantStoryWidget(story : storys[3]),
            PlantStoryWidget(story : storys[4]),
            PlantStoryWidget(story : storys[5]),
          ],
        )
    );
  }
}