
import 'package:flutter/material.dart';
import 'package:planti/data/UserData.dart';

class UserProfileWidget extends StatelessWidget {
  UserProfileWidget({Key key, this.user}) : super(key: key);
  final UserData user;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child : Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(user.thumbnail, width: 50, height: 50, fit: BoxFit.cover,),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.nickname, style: TextStyle( fontSize: 18, ),),
              Text(user.introduction, style: TextStyle( fontSize: 12, )),
            ],
          )
        ],
      )
    );
  }
}