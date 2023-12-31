import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: Clipper2(),
  ));
}

class Clipper2 extends StatefulWidget {
  const Clipper2({super.key});

  @override
  State<Clipper2> createState() => _ClipperState();
}

class _ClipperState extends State<Clipper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Clipper"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: 120,
                color: Colors.deepPurple,
                child: Center(child: Text("WaveClipperOne()")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
