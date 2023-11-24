import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview5(),
  ));
}

class Gridview5 extends StatefulWidget {
  const Gridview5({super.key});

  @override
  State<Gridview5> createState() => _Gridview5State();
}

class _Gridview5State extends State<Gridview5> {
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
        title: Text("Gridview Extent"),
        centerTitle: true,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,

        children: List.generate(
          10,
          (index) {
            return Card(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Image.asset(
                      fimage[index],
                      // height: 100,
                      // width: 100,
                    ),
                  ),
                  Text(
                    fname[index],
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
