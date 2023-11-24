import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/custom_widget/custom_widget1.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatefulWidget {
  const GridView2({super.key});

  @override
  State<GridView2> createState() => _GridView2State();
}

class _GridView2State extends State<GridView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
        ),
        children: List.generate(
          20,
          (index) {
            return MyWidget1(
                label: Text("Stewie"),
                image: Image.asset("assets/list_image/stewie.png"),
                bg_Color: Colors.blueGrey,
                pressed: () {});
          },
        ),
      ),
    );
  }
}
