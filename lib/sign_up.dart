  import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/sign_in.dart';

class SignupPage extends StatelessWidget {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
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
        title: const Text("Sign UP"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Image.asset(
              "assets/icons/twitterlogo.png",
              scale: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_4_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Firstname",
                  labelText: "Firstname"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_4_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Lastname",
                  labelText: "Lastname"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                  labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_android_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Phone",
                  labelText: "Phone"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Username",
                  labelText: "username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          MaterialButton(
              color: Colors.black54,
              shape: StadiumBorder(),
              height: 50,
              minWidth: 100,
              onPressed: () {
                firstnameController.text = "";
                lastnameController.text = "";
                emailController.text = "";
                phoneController.text = "";
                usernameController.text = "";
                passwordController.text = "";
              },
              child: const Text(
                "Sign UP",
                selectionColor: Colors.black12,
              ))
        ],
      ),
    );
  }
}
