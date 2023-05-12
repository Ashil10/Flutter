import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home"),
            actions: [
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(child:
                  Row(
                    children: [
                      Icon(Icons.search,color:Colors.black,),
                      Text('search'),
                    ],
                  )),
                  PopupMenuItem(child:
                  Row(
                    children: [
                      Icon(Icons.upload,color: Colors.black),
                      Text('upload'),
    ],
    ))
    ],)
    ],

    ),

    );
  }
}
