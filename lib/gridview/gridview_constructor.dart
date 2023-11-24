import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: GridView1(),
    ),
  );
}

class GridView1 extends StatefulWidget {
  const GridView1({super.key});

  @override
  State<GridView1> createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        children: [
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
          Card(child: Image.asset("assets/list_image/stewie.png")),
        ],
      ),
    );
  }
}
