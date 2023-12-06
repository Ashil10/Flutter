import 'package:project1/DBMS PROJECT/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
  void main() async {
WidgetsFlutterBinding.ensureInitialized();
//await Firebase.initializeApp();
await Firebase.initializeApp(
options: FirebaseOptions(
apiKey: "AIzaSyCjCNOY0abNhUClXjnRyWHudHiWHLIp76I",
appId: "1:145987851812:web:65eca1d6e5dc57d0ba6ab1",
messagingSenderId: "145987851812",
projectId: "chat-app-16606",
));
runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}