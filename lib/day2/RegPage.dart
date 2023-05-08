import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/day2/homepage.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPage();
}

class _RegPage extends State<RegPage> {
  var fnameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmpasswordController=TextEditingController();
  var fname='',email='',password='',cpassword='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('REGISTRATION PAGE'),
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(25),

               child: Text("Hey there!!",style: TextStyle(fontSize: 25),),),

            Padding(
              padding: const EdgeInsets.all(50),

              child: Text("Create an Account",
              style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: fnameController,
                  decoration: InputDecoration(
                      label: Text('Name'), border: OutlineInputBorder())),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      label: Text('Email'), border: OutlineInputBorder())),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Password'), border: OutlineInputBorder()),
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: confirmpasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder()),
                )),
            Text("Privacy Policy"),
            SizedBox(
                height: 50,
                width: 100,
                child:
                    ElevatedButton(onPressed: () {

                      setState(() {
                        fname=fnameController.text;
                        email=emailController.text;
                        password=passwordController.text;
                        cpassword=confirmpasswordController.text;
                        if(fname.isEmpty)
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your first name")));
                        else if(email.isEmpty)
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your email")));
                        else if(password.isEmpty)
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your password")));
                        else if(cpassword.isEmpty)
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Confirm your password")));
                        else if(cpassword!=password)
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Both Passwords must be same")));
                        else {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomePage(),));
                        }

                      });
                    }, child: Text("Register"))),
           TextButton(onPressed: (){}, child: Text("LOGIN +")),
          ])
        ]));
  }
}
