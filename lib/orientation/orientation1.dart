import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Orientation1(),
  ));
}

class Orientation1 extends StatelessWidget {
  var height, width, orientation;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Orientation MediaQuery"),
        centerTitle: true,
      ),
      body: orientation == Orientation.portrait
          ? Container(
              color: Colors.blueGrey,
              height: height / 2,
              width: width / 2,
              child: Center(child: Text("Portrait")),
            )
          : Container(
              color: Colors.green,
              height: height / 2,
              width: width,
              child: Center(child: Text("Landscape")),
            ),
    );
  }
}
