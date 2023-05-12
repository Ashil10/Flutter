import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/day 4/status.dart';
import 'package:project1/day 4/chats.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(centerTitle: false,
        title: Text(
          'Whatsapp',
        ),
        backgroundColor: Colors.teal[900],
        actions: [
          Row(
            children: [
              PopupMenuButton(
                icon: Icon(Icons.camera_alt_outlined),
                itemBuilder: (context) => [],
              ),
              PopupMenuButton(
                icon: Icon(Icons.search),
                itemBuilder: (context) => [],
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: ListTile(
                      leading: Text('Clear call log'),
                    ),
                  ),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text('Settings'),
                      )),
                ],
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                        });},
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[900]),
                      child: Text('Chats')),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,MaterialPageRoute(builder: (context) => Status(),)
                          );
                        });
                      },
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[900]),
                      child: Text('Status')),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {

                      },
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[500]),
                      child: Text('Calls')),
                )
              ],
            ),
            color: Colors.teal,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}