import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWIGGY'),
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
              width: 100,
              child: Image.network(
                  'https://ajwafamilyrestaurant.in/images/assets/s.png')),
        ),Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(decoration: InputDecoration(label:Text('Username'),border:OutlineInputBorder())),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(obscureText:true,decoration: InputDecoration(label:Text('Password'),border:OutlineInputBorder()),

          ),
        )
      ,SizedBox(height: 50 ,width: 100,child: ElevatedButton(onPressed: (){}, child:Text("LOGIN" )))
    ])
    ]
    )

    );
  }
}