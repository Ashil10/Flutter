import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPage();
}

class _RegPage extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('REGISTRATION PAGE'),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: ListView(
            children:[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,


                  children: [
                    Padding(
                      padding: const EdgeInsets.all(100.0),
                      child: SizedBox(
                          width: 300,
                          child: Text("Hey there Create an Account")),
                    ),Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(decoration: InputDecoration(label:Text('Name'),border:OutlineInputBorder())),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(decoration: InputDecoration(label:Text('Email'),border:OutlineInputBorder())),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(obscureText:true,decoration: InputDecoration(label:Text('Password'),border:OutlineInputBorder()),

                      ))
                                    ,
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(obscureText:true,decoration: InputDecoration(label:Text('Confirm Password'),border:OutlineInputBorder()),

                        )),
                    SizedBox(height: 50 ,width: 100,child: ElevatedButton(onPressed: (){}, child:Text("Register"))),
                    SizedBox(height: 50 ,width: 100,child: ElevatedButton(onPressed: (){}, child:Text("LOGIN" )))
                    ])
            ]
        )

    );
  }
}