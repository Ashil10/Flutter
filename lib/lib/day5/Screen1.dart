import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO'),
        ),
        body: Container(
          child: Column(
            children: [
              Align(
                  child: Text('TITLE', style: TextStyle(fontSize: 20)),
                  alignment: Alignment.centerLeft),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label:Align(child: Text('Enter title'),alignment: Alignment.topCenter,), border: OutlineInputBorder()),
                ),
              ),
              Align(
                child: Text('DESCRIPTION', style: TextStyle(fontSize: 20)),
                alignment: Alignment.centerLeft,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration(
                      label: Align(child: Text('Enter description'),alignment:Alignment.topCenter),
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('SAVE'))
            ],
          ),
        ));
  }
}