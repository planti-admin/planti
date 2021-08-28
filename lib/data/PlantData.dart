


import 'package:planti/data/CommonData.dart';


enum EPlantType {
  Monster,
  Tree,
  Flower,
  Dog,
}

class PlantData extends CommonData {
  String name = ''; // 이름
  String nickname = ''; // 별명
  String thumbnail = ''; // 사진 (최초생성 Default 이미지 > 내 사진으로 바꾸기)
  String introduction = ''; // 소개글
  int waterDate = 0; // 물준 날짜
  int requiredInsertDate = 0; // 사용자요청 등록일자, age(yy년 mm월) 추론가능


  PlantData(this.name, this.nickname, this.thumbnail, this.introduction) {}

  // TODO insertDate || requiredInsertDate 추출가능
  String get age => '1년 8개월';
  // String get id => id;
  // String get name => name;
  // String get nickname => nickname;
  // String get thumbnail => thumbnail;

  // TODO
  // EPlantType typeA; // 중분류
  // EPlantType typeB; // 대분류

  static List<PlantData> getMock () {
    // PlantData plantA = PlantData();
    // plantA.id = 'a';
    // plantA.name = '몬스테라';
    // plantA.nickname = '테라';
    // plantA.introduction = '생명력이 강한 친구에요';
    // plantA.thumbnail = 'assets/plant/a.jpeg';
    // PlantData plantB = PlantData();
    // plantB.id = 'b';
    // plantB.name = '몬스테라';
    // plantB.nickname = '테라';
    // plantB.introduction = '생명력이 강한 친구에요';
    // plantB.thumbnail = 'assets/plant/b.jpeg';
    // PlantData plantC = PlantData();
    // plantC.id = 'c';
    // plantC.name = '몬스테라';
    // plantC.nickname = '테라';
    // plantC.introduction = '생명력이 강한 친구에요';
    // plantC.thumbnail = 'assets/plant/c.jpeg';
    // PlantData plantD = PlantData();
    // plantD.id = 'd';
    // plantD.name = '몬스테라';
    // plantD.nickname = '테라';
    // plantD.introduction = '생명력이 강한 친구에요';
    // plantD.thumbnail = 'assets/plant/d.jpeg';
    return <PlantData> [
      // plantA,
      // plantB,
      // plantC,
      // plantD,
    ];
  }

}