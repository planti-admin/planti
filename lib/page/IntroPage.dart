import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

/**
 * 인트로페이지
 * - 로그인 여부확인 (로그인화면, 메인화면 분기)
 * */
class IntroPage extends StatelessWidget {
  const IntroPage({Key key}) : super(key: key);

  // FirebaseAuth _getAuth () {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   return auth;
  // }

  void _listenAuth () {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User user) {
          if (user == null) {
            print('User is currently signed out!');
          } else {
            print('User is signed in!');
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar : AppBar(
      //   title : Text('First'),
      // ),
        body : Center(
          child: Icon(Icons.person),
        )
    );
  }
}