import 'package:flutter/material.dart';
class Record_Data extends StatefulWidget {
  const Record_Data({Key? key}) : super(key: key);

  @override
  State<Record_Data> createState() => _Record_DataState();
}

class _Record_DataState extends State<Record_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Insert")),
          ElevatedButton(onPressed: (){}, child: Text("Update")),
          ElevatedButton(onPressed: (){}, child: Text("Delete")),
          ElevatedButton(onPressed: (){}, child: Text("Get All Rows")),
          ElevatedButton(onPressed: (){}, child: Text("Get Row Count"))

        ],
      ),
    );
  }
}
