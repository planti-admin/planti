

import 'CommonData.dart';

class UserData extends CommonData {
  String email = ''; // 이메일
  String nickname = ''; // 별명
  String thumbnail = ''; // 사진
  String introduction = ''; // 소개글

  UserData() {}

  static List<UserData> getMock () {
    UserData userA = UserData();
    userA.id = '1';
    userA.email = 'planti@gmail.com';
    userA.nickname = '플랜티';
    userA.thumbnail = 'assets/brid.jpg';
    userA.introduction = '플랜티 공식계정입니다.';
    return <UserData> [
      userA,
    ];
  }

}
