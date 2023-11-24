import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListviewBuilder()));
}

  class ListviewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        //scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 100,
              color: Colors.black87,
              child: Image(image: AssetImage("assets/list_image/stewie.png")),
            );
          }),
    );
  }
}
