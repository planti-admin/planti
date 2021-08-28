
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planti/page/MainPage.dart';
import 'package:planti/widget/SigninListWidget.dart';
import 'package:planti/widget/user/UserCardWidget.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

/**
 * 로그인 페이지
 * - 회원가입 (간편회원가입)
 * - 메일인증
 * - 간편인증 - 회원가입필요없나?
 *
 * - 휴대전화인증 (실명인증)
 * */
class SigninPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SigninPage();
}

class _SigninPage extends State<SigninPage> {
  User user;

  @override
  void initState() {
    _auth.userChanges().listen((event) => setState(() => user = event));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :
          Container(
            child: (() {
              // if(user != null) {
              //   return MainPage();
              // } else {
                return Column(
                  children: [
                    UserCardWidget(user),
                    Expanded(
                      child: SigninListWidget(),
                    ),
                  ],
                );
              // }
            }()),
          )
    );
  }
}