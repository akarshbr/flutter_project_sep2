import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() {
  ///inflate the given widget and attach it to the screen.
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xF00000),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover, image : AssetImage("assets/icons/HD-wallpaper-doge-memes-dog.jpg") ,
            
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.dangerous_outlined, size: 200, color: Colors.white,)
              //Image.asset("assets/icons/android-phone.png"),
              Image.asset("assets/icons/pngwing.com.png"),
              Text(
                "BONK",
                //style: TextStyle(color: Colors.black, fontSize: 50),
                style: GoogleFonts.pressStart2p(
                  fontSize: 50 ,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
