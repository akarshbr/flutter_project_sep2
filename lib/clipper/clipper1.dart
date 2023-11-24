import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Clipper1(),
  ));
}

class Clipper1 extends StatefulWidget {
  const Clipper1({super.key});

  @override
  State<Clipper1> createState() => _ClipperState();
}

class _ClipperState extends State<Clipper1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
                widthFactor: 1,
                heightFactor: .6,
                child: Image.asset("assets/cities/washington.jpg")),
          ),
          SizedBox(height: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("assets/cities/stockholm.jpg",scale: .5,),
          ),
          SizedBox(height: 10,),
          ClipOval(
            child: Image.asset("assets/cities/sydney.jpg"),
          ),
        ],
      ),
    );
  }
}
