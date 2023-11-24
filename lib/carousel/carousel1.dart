import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Carousel1(),
  ));
}

class Carousel1 extends StatelessWidget {
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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Carousel Scrolliing"),
        centerTitle: true,
      ),
      body: CarouselSlider(
        items: List.generate(
          10,
          (index) => Container(
            //color: Colors.blueGrey,
              decoration: BoxDecoration(
                //color: Colors.blueGrey,
            image: DecorationImage(
              image: AssetImage(fimage[index]),
            ),
          )),
        ),
        options: CarouselOptions(
            height: 200,
            viewportFraction: 0.6,
            initialPage: 3,
            autoPlay: true,
            enlargeCenterPage: true,
            reverse: true),
      ),
    );
  }
}
