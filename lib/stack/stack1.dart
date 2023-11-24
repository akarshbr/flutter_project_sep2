import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stack1(),
  ));
}

class Stack1 extends StatefulWidget {
  const Stack1({super.key});

  @override
  State<Stack1> createState() => _Stack1State();
}

class _Stack1State extends State<Stack1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Stack",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 100,
            top: 30,
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset("assets/fruits/apple.png"),
            ),
          ),
          Positioned(
            left: 50,
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/fruits/banana.png"),
            ),
          ),
          Positioned(
            left: 100,
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/fruits/grapes.png"),
            ),
          ),
        ],
      ),
    );
  }
}
