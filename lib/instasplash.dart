import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Instasplash(),
  ));
}

class Instasplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pink,
                  Colors.pinkAccent,
                  Colors.white])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/1491579602-yumminkysocialmedia36_83067.png",
                scale: 7,
              ),
              Text(
                "Instagram",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ),
    );
  }
}
