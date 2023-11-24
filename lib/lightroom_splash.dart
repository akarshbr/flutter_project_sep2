import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 250, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/lightroomicon.png",
                  height: 70,
                  width: 70,
                ),
                Text(
                  "Adobe Photoshop\nLightroom",
                  style: GoogleFonts.mukta(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 250, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/adobecreative.png",
                  scale: 10,
                ),
                Text(
                  "Adobe Creative Cloud",
                  style: GoogleFonts.mukta(fontSize: 13, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
