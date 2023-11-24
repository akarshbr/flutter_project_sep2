import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView6(),
  ));
}

class GridView6 extends StatefulWidget {
  const GridView6({super.key});

  @override
  State<GridView6> createState() => _GridView6State();
}

class _GridView6State extends State<GridView6> {
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
        title: Text("GridView Custom"),
        centerTitle: true,
      ),
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(List.generate(
          10,
          (index) {
            return Expanded(
              child: Card(
                color: Colors.blueGrey.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      fimage[index],
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      fname[index],
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Cart"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade800),
                    )
                  ],
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
