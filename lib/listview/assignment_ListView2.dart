import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ListView2(),
    ),
  );
}

class ListView2 extends StatefulWidget {
  const ListView2({super.key});

  @override
  State<ListView2> createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
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
  var fprice = [126, 60, 95, 220, 70, 62, 13, 35, 150, 420];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product List"),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: ListView(
        children: List.generate(
          fname.length,
          (index) => Card(
            elevation: 10,
            color: Colors.blueGrey.shade200,
            //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Image.asset(
                    fimage[index],
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: [
                            TextSpan(text: "Name: "),
                            TextSpan(
                              text: fname[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text:
                            TextSpan(style: TextStyle(fontSize: 15), children: [
                          TextSpan(text: "Unit: "),
                          TextSpan(
                            text: "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 15),
                          children: [
                            TextSpan(text: "Price: "),
                            TextSpan(
                              text: "₹${fprice[index]}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey.shade900),
                    onPressed: () {},
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
