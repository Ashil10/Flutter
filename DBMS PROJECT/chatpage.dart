import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Messages extends StatefulWidget {
  final String email;

  Messages({required this.email});

  @override
  _MessagesState createState() => _MessagesState(email: email);
}

class _MessagesState extends State<Messages> {
  String email;

  _MessagesState({required this.email});

  bool showEmojiPicker = false; // Track whether to show the emoji picker

  Stream<QuerySnapshot> _messageStream = FirebaseFirestore.instance
      .collection('Messages')
      .orderBy('time', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _messageStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          reverse: true,
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (_, index) {
            QueryDocumentSnapshot qs = snapshot.data!.docs[index];
            Timestamp? time = qs['time'] as Timestamp?;
            DateTime d = time?.toDate() ?? DateTime.now();


            bool isMe = email == qs['email'];

            return Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: GestureDetector(
                onLongPress: () {
                  if (isMe) {
                    _deleteMessage(qs.id);
                  }
                },
                onDoubleTap: () {
                  if (isMe) {
                    _editMessage(qs.id, qs['message']);
                  }
                },
                child: Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: isMe ? Colors.blue : Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          qs['email'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          qs['message'],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "${d.hour}:${d.minute}",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _deleteMessage(String messageId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Message"),
          content: Text("Are you sure you want to delete this message?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                FirebaseFirestore.instance.collection('Messages').doc(messageId).delete();
              },
              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  void _editMessage(String messageId, String currentMessage) async {
    String editedMessage = await showDialog(
      context: context,
      builder: (context) {
        TextEditingController editController = TextEditingController(text: currentMessage);

        return AlertDialog(
          title: Text("Edit Message"),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(hintText: "Enter your edited message"),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(editController.text);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );

    if (editedMessage != null && editedMessage.isNotEmpty) {
      FirebaseFirestore.instance.collection('Messages').doc(messageId).update({
        'message': editedMessage,
      });
    }
  }
}
