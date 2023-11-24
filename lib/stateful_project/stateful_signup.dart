import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/stateful_project/stateful_login.dart';

class SignUpStateful extends StatefulWidget {
  @override
  State<SignUpStateful> createState() => _SignUpStatefulState();
}

class _SignUpStatefulState extends State<SignUpStateful> {
  final formkey = GlobalKey<FormState>();
  String? password_check;
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          "Sign UP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/icons/twitterXlogo.png"),
                height: 100,
                width: 100,
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person_2,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Firstname"),
              ),
              SizedBox(height: 15),
              TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.person_2,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "LastName")),
              SizedBox(height: 15),
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
                        Icons.email,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Email")),
              SizedBox(height: 15),
              TextFormField(
                obscureText: visibility,
                  obscuringCharacter: "*",
                  validator: (password) {
                    password_check = password;
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
                                visibility = true;
                              }
                            });
                          },
                          icon: Icon(
                              visibility == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black54)),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.password_sharp,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Password")),
              SizedBox(height: 15),
              TextFormField(
                  validator: (confirmpassword) {
                    if (confirmpassword != password_check) {
                      return "Pass mismatch";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.password_sharp,
                        color: Colors.black54,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Confirm Password")),
              SizedBox(height: 15),
              MaterialButton(
                minWidth: 100,
                height: 50,
                color: Colors.white,
                shape: StadiumBorder(),
                onPressed: () {
                  final valid = formkey.currentState?.validate();
                  if (valid == true) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login_stateful()));
                  }
                },
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
