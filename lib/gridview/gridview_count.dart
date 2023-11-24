import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview4(),
  ));
}

class Gridview4 extends StatefulWidget {
  const Gridview4({super.key});

  @override
  State<Gridview4> createState() => _Gridview4State();
}

class _Gridview4State extends State<Gridview4> {
  var fimage = [
    "assets/fruits/apple.png",
    "assets/fruits/banana.png",
    "assets/fruits/grapes.png",
    "assets/fruits/kiwi.png",
    "assets/fruits/mango.png",
    "assets/fruits/orange.png",
    "assets/fruits/papaya.png",
    "assets/fruits/pineapple.png",
    "assets/fruits/pomegranate.png",
    "assets/fruits/strawberry.png"
  ];
  var fname = [
    "Apple",
    "Banana",
    "Grapes",
    "Kiwi",
    "Mango",
    "Orange",
    "Papaya",
    "Pineapple",
    "Pomegranate",
    "Strawberry"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Count"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          10,
          (index) {
            return Card(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(
                      fimage[index],
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Text(fname[index],style: TextStyle(fontSize: 30),)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
