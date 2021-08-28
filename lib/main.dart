import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:planti/page/AlertPage.dart';
import 'package:planti/page/SigninPage.dart';
import 'package:planti/page/MainPage.dart';
import 'package:planti/page/PlantAddPage.dart';
import 'package:planti/page/PlantDetailPage.dart';
import 'package:planti/page/PlantListPage.dart';
import 'package:planti/page/SettingPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SigninPage(),
      routes: {
        '/signin' : (context) => SigninPage(),
        '/main' : (context) => MainPage(),
        '/list' : (context) => PlantListPage(),
        '/detail' : (context) => PlantDetailPage(),
        '/alert' : (context) => AlertPage(),
        '/setting' : (context) => SettingPage(),
        '/plantAdd' : (context) => PlantAddPage()
      },
    );
  }
}