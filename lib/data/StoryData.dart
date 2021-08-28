
import 'package:planti/data/CommonData.dart';

class StoryData extends CommonData {
  String userId = ''; // 유저아이디
  List<String> thumbnail = []; // 사진
  String introduction = ''; // 소개글

  StoryData() {}

  static List<StoryData> getMock () {
    StoryData storyA = StoryData();
    storyA.userId = '1';
    storyA.thumbnail = ['assets/plant/a.jpeg', 'assets/plant/b.jpeg'];
    storyA.introduction = '두근두근 첫번째 스토리 업로드.';
    StoryData storyB = StoryData();
    storyB.userId = '1';
    storyB.thumbnail = ['assets/plant/b.jpeg', 'assets/plant/b.jpeg'];
    storyB.introduction = '두근두근 첫번째 스토리 업로드.';
    StoryData storyC = StoryData();
    storyC.userId = '1';
    storyC.thumbnail = ['assets/plant/c.jpeg', 'assets/plant/b.jpeg'];
    storyC.introduction = '두근두근 첫번째 스토리 업로드.';
    return <StoryData> [
      storyA,
      storyB,
      storyC,
      storyA,
      storyB,
      storyC,
    ];
  }

}