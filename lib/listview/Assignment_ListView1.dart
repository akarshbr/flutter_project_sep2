import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ListView1Assignment(),
    ),
  );
}

class ListView1Assignment extends StatefulWidget {
  const ListView1Assignment({super.key});

  @override
  State<ListView1Assignment> createState() => _ListView1AssignmentState();
}

class _ListView1AssignmentState extends State<ListView1Assignment> {
  var image = [
    "assets/cities/washington.jpg",
    "assets/cities/sydney.jpg",
    "assets/cities/stockholm.jpg",
    "assets/cities/cairo.jpeg",
    "assets/cities/buenosaires.jpg"
  ];
  var city = [
    "Washington, D.C.",
    "Sydney",
    "Stockholm",
    "Cairo",
    "Buenos Aires"
  ];
  var country = ["USA", "Australia", "Sweden", "Egypt", "Argentina"];
  var population = [0.7, 5.3, 0.9, 9.5, 16.7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text("Cities Around World"),
      ),
      body: ListView(
        children: List.generate(
          5,
          (index) => Card(
            color: Colors.orange,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset(
                    image[index],
                    width: 180,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city[index],
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        country[index],
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Population :${population[index]} mil",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
