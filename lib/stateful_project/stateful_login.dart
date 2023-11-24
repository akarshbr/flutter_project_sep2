import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/listview/home_page.dart';
import 'package:flutter_project_sep2/stateful_project/stateful_signup.dart';

class Login_stateful extends StatefulWidget {
  @override
  State<Login_stateful> createState() => Login_statefulState();
}

class Login_statefulState extends State<Login_stateful> {
  final formkey = GlobalKey<FormState>();
  bool? visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        elevation: 0,
        backgroundColor: Colors.black,
        // title: Text(
        //   "Login Page",
        //   style: TextStyle(color: Colors.black),
        // )
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage("assets/icons/twitterXlogo.png"),
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Enter proper Email!!!";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person_2,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "email"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: visibility!,
                obscuringCharacter: "*",
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Password empty or should be greater than 6";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (visibility == true) {
                              visibility = false;
                            } else {
                              if (visibility == false) {
                                visibility = true;
                              }
                            }
                          });
                        },
                        icon: Icon(visibility == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.password_sharp,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "password"),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                minWidth: 100,
                height: 50,
                color: Colors.white,
                shape: StadiumBorder(),
                onPressed: () {
                  final valid = formkey.currentState?.validate();
                  if (valid == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpStateful()));
                },
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        children: [
                      TextSpan(text: "Don't Have an account,"),
                      TextSpan(
                          text: "SignUP",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
