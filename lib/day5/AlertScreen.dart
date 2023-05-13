import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.all(40.0),
          child: TextButton(onPressed: () {
            showDialog(context: context,
              builder: (context) => AlertDialog(
                content: Text('Exit from this app'),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: () {

                    }, child: Text('yes')),
                  ),
                  ElevatedButton(onPressed: () {

                  }, child: Text('No'))
                ],
              ),);
          }, child: Text('Show Alert')),
        )],
      ),
    );
  }
}