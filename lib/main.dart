import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:ThemeData(primarySwatch: Colors.orange));
        home: Scaffold(
            appBar: AppBar(
      title: Text("Flutter"),
      centerTitle: true,
      foregroundColor: Colors.green,
      backgroundColor: CupertinoColors.label,
    ))

  }
}
