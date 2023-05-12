import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/day 4/calls.dart';
import 'package:project1/day 4/status.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                      leading: Text('New group'),
                    ),
                  ),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text('New broadcast'),
                      )),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text('Linked devices'),
                      )),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text(
                          'Starred messages',
                        ),
                      )),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text(
                          'Payments',
                        ),
                      )),
                  PopupMenuItem(
                      child: ListTile(
                        leading: Text(
                          'Settings',
                        ),
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
                      onPressed: () {},
                      style:
                      ElevatedButton.styleFrom(primary: Colors.teal[500]),
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