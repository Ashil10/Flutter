import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/day 4/calls.dart';
import 'package:project1/day 4/chats.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
                      leading: Text('Status privacy'),
                    ),
                  ),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text('Settings'),
                      )),
                ],
              ),
            ],
          ),
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
                        });

                      },
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[900]),
                      child: Text('Chats')),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
                        });
                      },
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[500]),
                      child: Text('Status')),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Calls(),));
                        });
                      },
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[900]),
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