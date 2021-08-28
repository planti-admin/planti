

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 회원가입 페이지
 * */
class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Center(child: Icon(Icons.check))
    );
  }
}