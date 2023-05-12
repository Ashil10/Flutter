import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _LoginPageState();
}

class _LoginPageState extends State<HomePage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  String display = 'Login Successfull';
  String logintext = 'Login';
  var uname = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWIGGY'),
        centerTitle: true,
        foregroundColor: Colors.white54,
        actions: [
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                      Text(
                        "Home",
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.chat_sharp,
                        color: Colors.red,
                      ),
                      Text(
                        "Chats",
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.bar_chart,
                        color: Colors.red,
                      ),
                      Text(
                        "Statistics",
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      Text(
                        "Sign Out",
                      ),
                    ],
                  ),
                ),

              ]),
        ],
      ),
      body: ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: SizedBox(
                width: 80,
                child: Image.network(
                    'https://ajwafamilyrestaurant.in/images/assets/s.png')),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    label: Text('Username'), border: OutlineInputBorder())),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text('Password'), border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        uname = usernameController.text;
                        password = passwordController.text;

                        if (uname.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Enter UserName'),
                          ));
                        } else if (password.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Enter Password'),
                          ));
                        } else {
                          logintext = display;
                        }
                      });
                    },
                    child: Text(logintext))),
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ]),
    );
  }
}