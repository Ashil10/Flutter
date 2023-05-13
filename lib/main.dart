import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/day5/AlertScreen.dart';
import 'package:project1/day5/Screen1.dart';
import 'package:project1/day6/SplashScreen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home:SplashScreen()
    );
  }
}