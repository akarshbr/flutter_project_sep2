import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/listview/home_page.dart';
import 'package:flutter_project_sep2/sign_in.dart';
import 'package:flutter_project_sep2/sign_up.dart';

class LoginPage extends StatelessWidget {
  final String username = "root";
  final String password = "1234";

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),

        title: Text("Login Page"),
        // actions: [
        //   Icon(Icons.camera),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Icon(Icons.search)
        // ],
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image.asset(
                "assets/icons/twitterlogo.png",
                scale: 50,
              )),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 100),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_4_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "username",
                  labelText: "username"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              controller: passwordController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  labelText: "Password"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: MaterialButton(
                color: Colors.black54,
                shape: StadiumBorder(),
                height: 50,
                minWidth: 100,
                onPressed: () {
                  if (username == usernameController.text &&
                      password == passwordController.text) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        "Username or Password incorrect!!!",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.black54,
                    ));
                  }
                  usernameController.text = "";
                  passwordController.text = "";
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                  selectionColor: Colors.white,
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 10),
                      children: [
                    TextSpan(text: "Dont have an account,"),
                    TextSpan(
                        text: "SignUp",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])))
        ],
      ),
    );
  }
}
