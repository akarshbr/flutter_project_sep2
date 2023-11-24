import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Henlo",
              style: GoogleFonts.bebasNeue(fontSize: 30),
            ),
            const Image(
              image: AssetImage("assets/icons/pngwing.com.png"),
              width: 100,
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: MaterialButton(
                shape: const StadiumBorder(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                color: Colors.grey,
                child: const Text("Login"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: MaterialButton(
                shape: const StadiumBorder(),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage())
                  );
                },
                color: Colors.grey,
                child: const Text("Sign UP"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
