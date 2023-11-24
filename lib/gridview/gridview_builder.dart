import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView3(),
  ));
}

class GridView3 extends StatefulWidget {
  const GridView3({super.key});

  @override
  State<GridView3> createState() => _GridView3State();
}

class _GridView3State extends State<GridView3> {
  var name = ["Stewie", "Brian", "Chris", "Meg", "Peter", "Lois"];
  var image = [
    "assets/list_image/stewie.png",
    "assets/list_image/brian.jpg",
    "assets/list_image/chris.jpeg",
    "assets/list_image/meg.jpg",
    "assets/list_image/peter.jpg",
    "assets/list_image/lois.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Builder"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Column(
            children: [Container(child: Image.asset(image[index],)), Text(name[index])],
          );
        },
      ),
    );
  }
}
