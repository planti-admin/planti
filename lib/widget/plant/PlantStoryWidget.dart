
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/data/StoryData.dart';

class PlantStoryWidget extends StatelessWidget {
  PlantStoryWidget({Key key, this.story}) : super(key: key);
  final StoryData story;

  /**
   * 유저정보
   * 이미지
   * 소개글
   * 작성날짜
   * */
  @override
  Widget build(BuildContext context) {
      return Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            // 유저정보
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(story.thumbnail[0], width: 30, height: 30, fit: BoxFit.cover,),
                  ),
                ),
                Text('plant')
              ],
            ),
            // Story Image (4:3)
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(story.thumbnail[0], fit: BoxFit.cover),
            ),
            // Story Info
            Row(

            ),
          ]));
  }
}