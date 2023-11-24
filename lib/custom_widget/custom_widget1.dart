import 'package:flutter/material.dart';

class MyWidget1 extends StatelessWidget {
  Color? bg_Color;
  Image? image;
  Widget? label;
  VoidCallback? pressed;

  MyWidget1(
      {required this.label,
      required this.image,
      required this.bg_Color,
      required this.pressed});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bg_Color,
      child: Column(
        children: [
          Container(
            child: image,
          ),
          MaterialButton(onPressed: (){},child: label,)
        ],
      ),
    );
  }
}
